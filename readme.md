# Nvim configuration
This repository keeps track of my personal settings and plugins of neovim

## Plugin manager
The plugin manager used on this couple of settings and plugins is `lazy`

## Current features
-   Code running
-   Navigation
-   Botton line
-   Notifications
-   Github theme
-   Identation sujestion
-   Nvim command sujestions
-   Terminal integration

## Next features
-   Search and filter
-   Language inside translator = https://github.com/potamides/pantran.nvim
-   Implement a debugger
-   Implement a tester inside neovim

# Dependencies on the operational system
Here are some dependencies that you should install to run this repository on neovim correctly
-   Telescope dependencies
    -   sudo apt-get install ripgrep
    -   sudo apt install fd-find
-   Nerdfonts
    -   Go to https://www.nerdfonts.com/font-downloads
    -   Install any nerdfont

# Shortcuts
Here are the main shortcuts that are new in this config of neovim

## Terminal Shortcuts
-   <C-t> = Toggle the terminal
-   <C-a> = Add new terminal
-   <C-n> and <C-p> = Go to the next and previous terminal
-   <C-k> = Kills the current open terminal

## File navigation
-   <Leader><t> = Open the file tree
-   <Leader><s> = Open the file search with telescope

### History
-   <Leader><h> = Open the history manager
-   <C-h> = Clear the history

### Favorite files in the project
-   <Leader><f> = Open the favorites files manager
-   <C-n> and <C-p> = Go to the next and previous favorite file

### Buffers
-   <Leader><b> = Open the buffer manager
-   <M-n> and <M-p> = Go to the next and previous buffer

### Between workspaces
-   <Leader><w> = Open the workspace manager in telescope

## Basic navigation
-   <S-j> and <S-k> = Go to the previous and next blank line

## Folds
-   <Leader><d><c> = Close all folds in the file
-   <Leader><d><o> = Open all folds in the file
-   <Leader><d><d> = Delete all folds in the file
-   <C-f> = Toggle the fold under the line in normal mode
-   <C-f> = Create a fold in the visual mode

## Text edition
-   <C-j> and <C-k> = To move the line up and down
-   <M-d> = Duplicate the line

-   <Leader><p> = Prettify the file (Just for supported languages)
-   <Leader><i> = Ident all lines in the file
-   <Leader><c> = Comment the selected lines or the current line

## Code runner
- <Leader><r><l> = Run live server
- <Leader><r><p> = Run python
- <Leader><r><j> = Run nodejs
