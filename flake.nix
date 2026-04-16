{
  description = "Yury Zakharov CV – RenderCV";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = [ pkgs.rendercv ];

        shellHook = ''
          echo "✅ RenderCV environment ready"
        '';
      };
    };
}
