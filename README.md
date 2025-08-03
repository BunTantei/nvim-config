# (づ｡◕‿‿◕｡)づ

### Prerequisites

```bash
# Core system tools
sudo pacman -S neovim git ripgrep fd fzf nodejs npm rustup go docker docker-compose kubectl jq python python-pip terraform helm

# Development tools from AUR
yay -S lazygit lazydocker gleam k9s tflint ansible-language-server stern kubectx

# Post-install setup
go install honnef.co/go/tools/cmd/staticcheck@latest
go install mvdan.cc/gofumpt@latest
rustup default stable
rustup component add rust-analyzer clippy rustfmt
sudo usermod -aG docker $USER
```

### Installation Steps

1. **Backup your existing config** (if you have one)

```bash
# Backup your existing Neovim config (if needed)
mv ~/.config/nvim ~/.config/nvim.backup
```

2. **Clone this repo**

```bash
# Clone the configuration
git clone https://github.com/BunTantei/nvim-config.git ~/.config/nvim
```

3. **Start Neovim** and watch the magic happen! (ﾉ≧∀≦)ﾉ
   
```bash
nvim
```

LazyVim will automatically install all plugins on first launch! Just sit back and enjoy the show~ (≧◡≦)
