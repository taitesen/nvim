# MY NEOVIM INIT

Arch Linux Distribution

## :wrench: Pre-installation

```sh
sudo pacman -S git wget curl ripgrep unzip ttf-jetbrains-mono-nerd fzf fd
```
## :wrench: Installation

<details><summary>Install</summary>

```sh
git clone https://github.com/taitesen/nvim.git ~/.config/nvim && cd ~/.config/nvim && nvim
 ```
</details>

<details><summary>Uninstall</summary>

```sh
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```
</details>

## :bulb: Keybinds

##### Default LEADER key is <kbd>    Space    </kbd>

<details><summary>Fzf lua</summary>

|                    keys  |                  actions      |
|:-                        |:-                             |
|<kbd>s</kbd><kbd>s</kbd>  |     resume                    |
|<kbd>s</kbd><kbd>c</kbd>  |     live grep current buffer  |
|<kbd>s</kbd><kbd>z</kbd>  |     builtin                   |
|<kbd>s</kbd><kbd>d</kbd>  |     document diagnostic       |
|<kbd>s</kbd><kbd>D</kbd>  |     workspace diagnostic      |
|<kbd>s</kbd><kbd>f</kbd>  |     files                     |
|<kbd>s</kbd><kbd>g</kbd>  |     live grep                 |
|<kbd>s</kbd><kbd>g</kbd>  |     grep visual(in visual mode|
| <kbd>s</kbd><kbd>h</kbd> |     helptags                  |

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
