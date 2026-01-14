# Tmux Configuration

Personal tmux configuration with vim-style navigation and tokyo-night theme.

## Setup

Run the setup script to install TPM (Tmux Plugin Manager):

```bash
./setup.sh
```

Then start tmux and press `Ctrl+Space I` to install plugins.

## Key Bindings

**Prefix:** `Ctrl+Space`

### Pane Navigation

| Key | Action |
|-----|--------|
| `prefix + h/j/k/l` | Navigate panes (vim-style) |
| `Alt + Arrow keys` | Navigate panes (no prefix) |

### Window Navigation

| Key | Action |
|-----|--------|
| `Shift + Left/Right` | Switch windows |
| `Alt + H/L` | Switch windows (vim-style) |

## Plugins

- [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible) - Sensible defaults
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Seamless vim/tmux navigation
- [tokyo-night-tmux](https://github.com/janoamaral/tokyo-night-tmux) - Tokyo Night theme
