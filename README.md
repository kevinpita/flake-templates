# Development Templates

A collection of development environment templates using Nix flakes.

## Available Templates

### Go Template

A minimal Go development environment with:
- Go toolchain
- gofumpt for formatting
- golangci-lint for linting
- gopls (Go language server)
- pre-commit hooks for code quality and conventional commits

Usage:
```bash
nix flake init --refresh -t github:kevinpita/flake-templates#golang && echo "use flake" > .envrc && direnv allow
```
