{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "cv";

  packages = with pkgs; [
    git
  ];

  shellHook = ''
    echo "Entered devShell: cv"
  '';
}
