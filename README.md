# (づ｡◕‿‿◕｡)づ My Super Cute Neovim Config

Welcome to my adorable Neovim setup! This configuration is built on LazyVim and customized for developers who work with Go, JavaScript/TypeScript, Python, and web frameworks like Astro and Svelte! (๑˃ᴗ˂)

![250317_17h24m42s_screenshot](https://github.com/user-attachments/assets/30f2fbfa-7606-4399-bd78-097ed86dca7b)

## (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧ What's Inside?

- **LazyVim Base**: A wonderful starting point with sensible defaults!
- **Pretty Themes**: Gruvbox, Catppuccin, Kanagawa, and Rose Pine for all your mood changes~
- **LSP Support**: For all your favorite languages:
  - Go (with proper tabs, yay!)
  - Python (with uv package manager support)
  - JavaScript/TypeScript (for both Deno and Bun)
  - Astro and Svelte for frontend magic
- **Database Tools**: Connect to PostgreSQL, CockroachDB, SQLite, and ScyllaDB! (⌐■_■)
- **Docker Integration**: LazyDocker for container management!
- **GitHub Copilot**: AI-powered coding assistant to make your life easier! ヾ(＠⌒ー⌒＠)ノ

## (｡♥‿♥｡) Setup Guide using Arch Linux with Kitty Terminal

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

### Arch Linux & Kitty Setup Notes

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

Change themes with `:Lazy` and search for "colorscheme"! (⁀ᗢ⁀)

## ⌨️ Useful Keymaps

- `<leader>db` - Toggle database UI (◠‿◠)
- `<leader>ld` - Open LazyDocker (>ᴗ<)
- `<Space>` is your leader key! d(･∀･○)

## ╰(▔∀▔)╯ Customization

Want to add your own magic? Just edit these files:

- `lua/config/options.lua` - Basic editor settings
- `lua/config/keymaps.lua` - Custom keybindings
- `lua/plugins/` - Add or modify plugins

## (づ￣ ³￣)づ Enjoy Your Coding Journey!

Hope you love this setup as much as I do! If you have any questions or suggestions, feel free to reach out!

Happy coding! (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧
