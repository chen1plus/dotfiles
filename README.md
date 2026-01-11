# Dot Files

Personal dotfiles managed with [Dotter](https://github.com/SuperCuber/dotter).

## Installation

The following are the setup scripts for various environments.

### Super Computing Environment

Designed for non-privileged Linux environments.

```bash
export PATH=~/.local/bin:"$PATH"
mkdir -p ~/.local/bin; cd ~/.local/bin
curl https://zyedidia.github.io/eget.sh | sh
eget --to=~/.local/bin SuperCuber/dotter
```

Clone the repository and define packages to deploy.

```bash
git clone https://github.com/chen1plus/dotfiles.git ~/dotfiles
cd ~/dotfiles; cat <<EOF >.dotter/local.toml
includes = [".dotter/include/sc.toml"]
packages = ["bash", "git", "zellij"]
EOF
```

Deploy packages.

```bash
dotter deploy; eget-update
```

### macOS Environment

Designed for macOS systems with Homebrew package management.

Install Homebrew if not already installed:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install Dotter and clone the repository:

```bash
brew install dotter
git clone https://github.com/chen1plus/dotfiles.git ~/dotfiles
```

Define packages to deploy:

```bash
cd ~/dotfiles; cat <<EOF >.dotter/local.toml
includes = [".dotter/include/osx.toml"]
packages = ["bash", "fish", "ghostty", "git", "zed", "zellij"]
EOF
```

Deploy packages:

```bash
dotter deploy
```

Install Homebrew packages:

```bash
brew bundle --file=~/dotfiles/osx/Brewfile
```

Optionally, set up system configuration files (requires sudo):

```bash
sudo cp ~/dotfiles/osx/etc/shells /etc/shells
sudo cp ~/dotfiles/osx/etc/pam.d/sudo_local /etc/pam.d/sudo_local
```
