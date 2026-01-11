# Dot Files

Personal dotfiles managed with [Dotter](https://github.com/SuperCuber/dotter).

## Installation

The following are the setup scripts for various environments.

### MacBook

Set up Homebrew and system configuration files.

```sh
git clone https://github.com/chen1plus/dotfiles.git ~/.config/dotfiles
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/opt/homebrew/bin/brew bundle install --file ~/.config/dotfiles/osx/Brewfile --verbose
sudo cp ~/.config/dotfiles/osx/etc/pam.d/sudo_local /etc/pam.d/sudo_local
sudo cp ~/.config/dotfiles/osx/etc/shells /etc/shells
```

Change default shell.

```sh
chsh -s /opt/homebrew/bin/fish
```

Restart and deploy packages.

```sh
cd ~/.config/dotfiles; cat <<EOF >.dotter/local.toml
includes = [".dotter/include/osx.toml"]
packages = ["fish", "ghostty", "git", "zed", "zellij"]
EOF
fisher install jethrokuan/z
fisher install jorgebucaran/autopair.fish
fisher install patrickf1/fzf.fish
fisher install pure-fish/pure
dotter deploy
```

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
