{
  description = "Go development environment";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          go
          gofumpt
          golangci-lint
          gopls
        ];
        shellHook = ''
          if [ ! -f go.mod ]; then
            go mod init "github.com/kevinpita/$(basename $(pwd))"
          fi
        '';
      };
    };
}

