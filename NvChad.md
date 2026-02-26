# Neovim keybinds
- Capital letters do the opposite of small letters in command (Press shift to trigger capital letters)
- `_` (underscore) to move the cursor at the beginning of line (doesn't switch to insert mode)
  - `0` (zero) moves the cursor to the zeroth position of the line (doesn't switch to insert mode)
- `$` (dollar) to move the cursor at the end of line (doesn't switch to insert mode)
- `d$` will delete from wherever your cursor is till the end of the line
- `f<character>` to move cursor to the first occurrence of `<character>`
  - `f(` to move cursor to first occurence of `(`
- `t<character>` to move cursor to upto but not on the first occurrence of `<character>`
  - `t(` to move cursor to first occurence of `(`
- To repeat it, use `,` (comma, goes backward) or `;` (semicolon, goes forward)
  - `fe` and then keep pressing `;` to walk through each `e`
- To indent lines, select them using the visual line mode `Shift + v` and then use `>` to indent them right and `<` to indent them left

# [NvChad](https://nvchad.com) keybinds
- [based on this video](https://youtu.be/Mtgo-nP_r8Y)
- `space + c + h` to open keybinds cheatsheet (same command to close the window)
- `space` is considered as the ***leader*** key (commands often start with this key)
- Press the leader key `space` and wait for a second, a window should appear suggesting potential commands.

## **Themes** 🖌️
`space + t + h`

## **Syntax Highlight** 🖊️
- [neovim](https://github.com/neovim/neovim) comes with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [To install a language](https://github.com/neovim/neovim) `:TSInstall <language_to_install>`
  - [A list of suupported languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages)
  - To check which languages are installed `:TSInstallInfo`

## **File tree** 🌳
- `ctrl + n`
- Arrow keys to move cursor to a file and `return (enter)` to open a file
- `m` to mark a file
- `a` to create a new file and type the new file name
- `c` to copy a file
- `p` to paste the file
- `r` to rename a file
- `ctrl + w + h/l` or `larrow/rarrow` to switch between file tree and editor

## **Line numbers** 🔢
- `space + n` to toggle line numbers on/off
- `space + r + n` to toggle relative line numbers on/off
  - Once inside relative line number mode, can also press `space + n` to show current line as `0` (adjust as per your liking)

## **File navigation (Search)** 🕸️
- `space + f + f` to open file search menu (across the entire project)
- `space + f + b` to open file search menu (across the currently opened files)

## **Window navigation** 🕹️
- `:vsp` for vertical split
- `:sp` for horizontal split
- `ctrl + h/j/k/l` to toggle windows

## **Cycle through open tabs (buffers)** 📑
- `tab` to cycle left to right
- `shift + tab` to cycle right to left
- `space + x` to close current tab (buffer)

## **Open terminal** 🤖
- `space + v` to open terminal (vertically)
  - `alt + v` to toggle the terminal on/off
- `space + h` to open terminal (horizontally)
  - `alt + h` to toggle the terminal on/off
