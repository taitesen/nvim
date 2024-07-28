# Neovim Config

Distro: Arch Linux.

## Pre-installation

```sh
sudo pacman -S git wget curl ripgrep unzip ttf-jetbrains-mono-nerd fzf fd
```
## Installation

<details><summary>Install</summary>

```sh
git clone https://github.com/taitesen/nvim.git ~/.config/nvim && cd ~/.config/nvim && nvim
 ```
</details>

## Post-installation

Run: `:MasonInstallAll` in neovim, after plugins are finished installing.

<details><summary>Uninstall</summary>

```sh
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```
</details>

## Keybinds

### Default LEADER key is <kbd>    Space    </kbd>

<details><summary>Telescope</summary>

|                    keys  |                  actions      |
|:-                        |:-                             |
|<kbd>s</kbd><kbd>f</kbd>  |     find_files                |
|<kbd>s</kbd><kbd>s</kbd>  |     grep_string               |
|<kbd>s</kbd><kbd>g</kbd>  |     live_grep                 |
|<kbd>s</kbd><kbd>b</kbd>  |     buffers                   |
|<kbd>s</kbd><kbd>r</kbd>  |     opens '~/.config'  directory  |
|<kbd>LEADER</kbd> + <kbd>v</kbd><kbd>h</kbd>  |     help_tags |

</details>

<details><summary>LSP</summary>

|    keys                      |   actions                      |
|:-  |                         :-  |
|    <kbd>;</kbd><kbd>s</kbd>  |   workspace_symbol             |
|    <kbd>;</kbd><kbd>d</kbd>  |   vim.diagnostic.open_float()  |
|    <kbd>;</kbd><kbd>a</kbd>  |   code_action                  |
|    <kbd>;</kbd><kbd>r</kbd>  |   references                   |
|    <kbd>;</kbd><kbd>n</kbd>  |   rename                       |
|    <kbd>;</kbd><kbd>f</kbd>  |   format                       |
|    <kbd>g</kbd><kbd>d</kbd>  |   definition                   |
|    <kbd>K</kbd>              |   hover                        |
|    <kbd>[</kbd><kbd>d</kbd>  |   diagnostic.goto_next         |
|    <kbd>]</kbd><kbd>d</kbd>  |   diagnostic.goto_prev         |

</details>

<details><summary>Zen Mode</summary>

|    keys               |   actions                   |
|:-  |                  :-  |
|    <kbd>LEADER</kbd>  +   <kbd>z</kbd><kbd>z</kbd>  |  Zen  Mode  with  line-numbers  |
|    <kbd>LEADER</kbd>  +   <kbd>z</kbd><kbd>Z</kbd>  |  Zen  Mode  OG    |

</details>

<details><summary>ThePrimeagen Harpoon</summary>

|    keys                                       |   actions  |
|:-  |                                          :-  |
|  <kbd>LEADER</kbd><kbd>r</kbd><kbd>r</kbd>  |  Harpoon  UI    Toggle   |
|  <kbd>LEADER</kbd><kbd>r</kbd><kbd>a</kbd>  |  Add      file  to       harpoon  |
|  <kbd>LEADER</kbd><kbd>1</kbd>              |  Switch   to    harpoon  List     1  |
|  <kbd>LEADER</kbd><kbd>2</kbd>              |  Switch   to    harpoon  List     2  |
|  <kbd>LEADER</kbd><kbd>3</kbd>              |  Switch   to    harpoon  List     3  |
|  <kbd>LEADER</kbd><kbd>4</kbd>              |  Switch   to    harpoon  List     4  |

</details>

<details><summary>Netrw</summary>

|    keys             |   actions       |
|:-  |                :-  |
|  <kbd>d</kbd>     |  create        directory  |
|  <kbd>%</kbd>     |  create        file       |
|  <kbd>D</kbd>     |  delete        |
|  <kbd>CTRL</kbd>  +  <kbd>n</kbd>  |          Open  Netrw  |
|  <kbd>R</kbd>     |  rename        |

</details>

<details><summary>Others</summary>

|    keys               |   actions                   |
|:-  |                  :-  |
|    <kbd>SHITF</kbd>   +   <kbd>l</kbd>              |  previous  buffer  |
|    <kbd>SHITF</kbd>   +   <kbd>h</kbd>              |  next      buffer  |
|    <kbd>SHITF</kbd>   +   <kbd>x</kbd>              |  delete    buffer  |
|    <kbd>LEADER</kbd>  +   <kbd>c</kbd><kbd>o</kbd>  |  opens     'opens  nvim-keymaps  configuration'  |

</details>








