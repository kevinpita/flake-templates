# Development Templates

A collection of development environment templates using Nix flakes.

## Available Templates

### Go Template

A minimal Go development environment with:
- Go toolchain
- gofumpt for formatting
- golangci-lint for linting
- gopls (Go language server)

Usage:
```bash
nix flake init -t github:kevinpita/flake-templates#golang && echo "use flake" > .envrc && direnv allow
```