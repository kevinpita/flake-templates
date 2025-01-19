{
  description = "Development templates collection";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs }: {
    templates = {
      golang = {
        path = builtins.path {
          name = "golang";
          path = ./golang;
        };
        description = "Go development environment with linting";
      };
      
    };
  };
}
