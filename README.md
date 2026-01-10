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

Deploy and install packages.

```bash
dotter deploy; eget-update
```
