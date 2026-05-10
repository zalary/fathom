<div align="center">

# Fathom

Fathom is a dark, low-contrast color theme built around one idea: distinction without distraction. Desaturated blue-greens, muted olives, and silver give you enough visual structure to navigate your work — without the jarring accent colors that pull focus away from it.

Sophisticated and intentional, but not prescriptive. No iconic palette to recognize, no aesthetic to perform. Just a calm environment that gets out of your way.

_Made for lovers of the deep — work, ocean, or soul._

</div>

---

## Palette

| Role       | Hex       | &nbsp; |
|------------|-----------|--------|
| Background | `#323D44` | ![](https://placehold.co/20x20/323D44/323D44.png) |
| Foreground | `#C0C0C0` | ![](https://placehold.co/20x20/C0C0C0/C0C0C0.png) |
| Cursor     | `#C1C1C1` | ![](https://placehold.co/20x20/C1C1C1/C1C1C1.png) |
| Black      | `#4D5355` | ![](https://placehold.co/20x20/4D5355/4D5355.png) |
| Red        | `#949B79` | ![](https://placehold.co/20x20/949B79/949B79.png) |
| Green      | `#88908E` | ![](https://placehold.co/20x20/88908E/88908E.png) |
| Yellow     | `#99926B` | ![](https://placehold.co/20x20/99926B/99926B.png) |
| Blue       | `#7A8280` | ![](https://placehold.co/20x20/7A8280/7A8280.png) |
| Magenta    | `#999999` | ![](https://placehold.co/20x20/999999/999999.png) |
| Cyan       | `#AAAAAA` | ![](https://placehold.co/20x20/AAAAAA/AAAAAA.png) |
| White      | `#C0C0C0` | ![](https://placehold.co/20x20/C0C0C0/C0C0C0.png) |

---

## Neovim

_Requires Neovim 0.8+ with `termguicolors`._

### Install

**Manual:**

```sh
mkdir -p ~/.config/nvim/colors
cp neovim/colors/fathom.lua ~/.config/nvim/colors/
```

Then in your `init.lua`:

```lua
vim.cmd('colorscheme fathom')
```

**Via [lazy.nvim](https://github.com/folke/lazy.nvim):**

```lua
{
  dir = '~/path/to/fathom/neovim',
  name = 'fathom',
  config = function()
    vim.cmd('colorscheme fathom')
  end,
}
```

---

## Ghostty

_Requires [Ghostty](https://ghostty.org/)._

### Install

```sh
cp ghostty/fathom ~/.config/ghostty/themes/fathom
```

Then in your Ghostty config:

```
theme = fathom
```

---

## Bullet Train (Zsh)

_Requires [Bullet Train](https://github.com/caiogondim/bullet-train.zsh) and [oh-my-zsh](https://ohmyz.sh/)._  
_For best results, pair with the Ghostty theme so terminal colors match._

### Install

Source the theme file from your `.zshrc`, after your Bullet Train config block:

```sh
source path/to/fathom/bullet-train/fathom.zsh
```

---

## Mailspring

_Requires [Mailspring](https://getmailspring.com/)._

### Install

1. Clone or download this repo
2. Open Mailspring → **Preferences** → **Appearance** → **Theme** → **Install a theme manually...**
3. Select the `mailspring/` folder

---

## Slack

### Install

1. Open Slack → **Preferences** → **Themes**
2. Scroll to the bottom and click **"Custom Theme"**
3. Paste this string:

```
#323D44,#3A454D,#4D5355,#C0C0C0,#3A454D,#AAAAAA,#88908E,#949B79
```

| Slot               | Color     | &nbsp; |
|--------------------|-----------|--------|
| Sidebar BG         | `#323D44` | ![](https://placehold.co/20x20/323D44/323D44.png) |
| Menu BG Hover      | `#3A454D` | ![](https://placehold.co/20x20/3A454D/3A454D.png) |
| Active Item        | `#4D5355` | ![](https://placehold.co/20x20/4D5355/4D5355.png) |
| Active Item Text   | `#C0C0C0` | ![](https://placehold.co/20x20/C0C0C0/C0C0C0.png) |
| Hover Item         | `#3A454D` | ![](https://placehold.co/20x20/3A454D/3A454D.png) |
| Text               | `#AAAAAA` | ![](https://placehold.co/20x20/AAAAAA/AAAAAA.png) |
| Active Presence    | `#88908E` | ![](https://placehold.co/20x20/88908E/88908E.png) |
| Mention Badge      | `#949B79` | ![](https://placehold.co/20x20/949B79/949B79.png) |

---

## Alfred

_Requires [Alfred](https://alfredapp.com)._

### Install

Double-click [`alfred/Fathom.alfredappearance`](alfred/Fathom.alfredappearance).

---

## Credits

Theme by [@zalary](https://github.com/zalary).  
Inspired by [Yoncé](https://github.com/minamarkham/yonce) by [@minamarkham](https://github.com/minamarkham).
