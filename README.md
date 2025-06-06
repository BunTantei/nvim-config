# (づ｡◕‿‿◕｡)づ My Neovim Config

### Prerequisites

```bash
# Make sure you have these installed first!
pacman -S neovim git ripgrep fd lazygit node npm
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

### Arch Linux Setup Notes

```bash
# Install some nice-to-have tools
pacman -S lazygit ripgrep fd fzf
yay -S lazydocker # For Docker integration
```

## (◕‿◕✿) Color Themes

You can switch between these gorgeous themes:

- **Gruvbox** (default): Cozy retro feels!
- **Catppuccin**: Sweet and modern!
- **Kanagawa**: Elegant Japanese vibes!
- **Rose Pine**: Soothingly natural!
- And so much more!!! hehe ;D

Change themes with `:Lazy` and search for "colorscheme xxxxx"! (⁀ᗢ⁀)

## ⌨️ Useful Keymaps

- `<leader>db` - Toggle database UI (◠‿◠)
- `<leader>ld` - Open LazyDocker (>ᴗ<)
- `<Space>` is your leader key! d(･∀･○)

Happy coding! (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧
