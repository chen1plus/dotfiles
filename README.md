# Dotfiles

Personal dotfiles managed with [dotter](https://github.com/SuperCuber/dotter).

## Overview

This repository contains configuration files for:

- **bash**: Shell configuration with modern CLI tools integration
- **git**: Git configuration with GitHub CLI integration
- **zellij**: Terminal multiplexer configuration
- **sc**: Script collection for package management with eget

## Prerequisites

- [dotter](https://github.com/SuperCuber/dotter) - Dotfile manager
- [eget](https://github.com/zyedidia/eget) - Binary package installer

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/chen1plus/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Deploy dotfiles using dotter:
   ```bash
   dotter deploy
   ```

## Included Configurations

### Bash

- Custom aliases for enhanced file listing with `eza`
- Integration with modern CLI tools:
  - [starship](https://starship.rs/) - Cross-shell prompt
  - [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
  - [zoxide](https://github.com/ajeetdsouza/zoxide) - Smarter cd command
  - [carapace](https://github.com/carapace-sh/carapace-bin) - Command completions

### Git

- GitHub CLI credential helper integration
- User configuration

### Zellij

- Compact layout with customized theme (Catppuccin Macchiato)
- Micro editor integration for scrollback

### Package Management

The `sc/eget.packages` file contains a curated list of useful CLI tools that can be installed with eget:

- Development tools: `bottom`, `dust`, `duf`, `hyperfine`
- File utilities: `bat`, `fd`, `eza`
- Text processing: `jq`, `sd`, `delta`
- Build tools: `just`, `hyperqueue`
- And many more...

Update all packages with:
```bash
eget-update
```

## License

MIT License - See [LICENSE](LICENSE) file for details.
