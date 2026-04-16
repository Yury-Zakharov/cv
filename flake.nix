{
  description = "Isolated development shell (rendercv + opencode)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";

      overlays = import ~/.config/nix/devshell/overlays.nix;

      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
        inherit overlays;
      };

      importModule = path: import path { inherit pkgs; };

      baseModule = importModule ~/.config/nix/devshell/modules/base.nix;

      extraModules = [
        # (importModule ~/.config/nix/devshell/modules/dotnet.nix)
        # (importModule ~/.config/nix/devshell/modules/get-shit-done.nix)
        # import your modules here, see example above
        (importModule ~/.config/nix/devshell/modules/rendercv.nix)
      ];

      allModules = [ baseModule ] ++ extraModules;

      merged = {
        packages = builtins.concatLists (map (m: m.packages or []) allModules);
        env      = builtins.foldl' (acc: m: acc // (m.env or {})) {} allModules;
        shellHook = builtins.concatStringsSep "\n" (map (m: m.shellHook or "") allModules);
      };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = merged.packages;

        inherit (merged) env;

        shellHook = ''
          # Explicit env injection from modules
          ${builtins.concatStringsSep "\n"
            (map (name: "export ${name}=\"${merged.env.${name}}\"")
                 (builtins.attrNames merged.env))}

          # Run module shellHooks
          ${merged.shellHook}
        '';
      };
    };
}
