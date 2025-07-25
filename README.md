# (づ｡◕‿‿◕｡)づ My Neovim Config

### Prerequisites

```bash
# Core system tools
sudo pacman -S neovim git ripgrep fd fzf nodejs npm go docker docker-compose kubectl jq python python-pip terraform helm

# Development tools from AUR
yay -S lazygit lazydocker gleam k9s tflint ansible-language-server stern kubectx

# Post-install setup
go install honnef.co/go/tools/cmd/staticcheck@latest
go install mvdan.cc/gofumpt@latest
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
git clone https://github.com/WST-T/nvim-config.git ~/.config/nvim
```

3. **Start Neovim** and watch the magic happen! (ﾉ≧∀≦)ﾉ
   
```bash
nvim
```

LazyVim will automatically install all plugins on first launch! Just sit back and enjoy the show~ (≧◡≦)

## (◕‿◕✿) Color Themes

You can switch between these gorgeous themes (⁀ᗢ⁀):
- :colorscheme gruvbox
- :colorscheme catppuccin
- :colorscheme rose-pine
- :colorscheme kanagawa
- :colorscheme everforest
- :colorscheme moonfly
- :colorscheme oxocarbon
- :colorscheme tokyonight
- :colorscheme nightfox
- :colorscheme github_dark
- :colorscheme cyberdream
- :colorscheme onedark
- :colorscheme melange **default**
- :colorscheme sonokai
- :colorscheme dracula
- :colorscheme flow

## ⌨️ Useful Keymaps

- `<leader>db` - Toggle database UI (◠‿◠)
- `<leader>ld` - Open LazyDocker (>ᴗ<)
- `<Space>` is your leader key! d(･∀･○)

Happy coding! (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧
