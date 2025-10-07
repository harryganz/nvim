# NeoVim Config

Harry Ganz

April 6, 2025

----

### Overview

This is my Neovim configuration which uses the lazy.nvim plugin library. It is currently set up
with language syntax highlighting, language server support (see below), file and symbol search, file/directory
navigation, autocompletion, and debugging. 

## Organization

The init.lua is the entrance point which loads: 
1. lua/config/options.lua - Global options and keymaps 
2. lua/config/lazy.lua - Entry point to load plugins using lazy.nvim
3. lua/config/keymaps.lua - Contains all custom key mappings

The plugin spec and plugin specific keymaps are in lua/plugins/\*.lua.

## Dependencies

* Neovim ~ 0.11.0
* Git  ~ 2.48.1
* Go ~ 1.24.0
* Required language servers (see below)
* Requried debuggers (see below)
* (optional) [Nerdfont](https://www.nerdfonts.com/) 

## Language Server Support

This configuration does not use Mason to install language servers, and they must be installed
as binaries on the PATH. Currently used language servers are:

* gopls - Go language server
* jdtls - Eclipse JDT Langage Server
    * If lombok support required, add the following to your .bashrc/.zshrc/etc. 
    ```
    export JDTLS_JVM_ARGS="-javaagent:<path to lombok jar>"
    ```

## Debugger Support

This configuration uses DAP (Debugger Adapater Protocol) to interact with debuggers. The debuggers
are not automatically installed and must be installed using a package manager or similar. 
Debuggers currently being used:

* delve - Go language debugger

## Usage

You can copy this configuraton by cloning this repo. into your config path, you can find it by opening 
Neovim and typing `:echo stpath("config")`. When you open neovim it should automatically load all of the plugins.

## Plugins 

* neovim/nvim-lspconfig - Language server protocol support for Neovim 
* L3MON4D3/LuaSnip - Snippets for Neovim 
* windwp/nvim-autopairs - Automatic completion of brackets/braces 
* hrsh7th/nvim-cmp - Autocomplete for Neovim
* mfussenegger/nvim-dap - Debug adapter for Neovim 
* rcarriga/nvim-dap-ui - Debugging UI 
* nvim-tree/nvim-tree.lua - File explorer
* yorickpeterse/nvim-window - Window navigation
* nvim-telescope/telescop.nvim - File/Text finding utility
* folke/tokyonight.nvim - Color scheme
* nvim-treesitter/nvim-treesitter - Syntax parsing/highlighting
* folke/trouble.nvim - Diagnostics/LSP dialog UI
* akinsho/toggleterm.nvim - Open terminal windows 
* tpop/vim-fugitive - Git integration (vimscript)

## Custom Keymaps 

| Mode | Keys | Action            |
| ---- | ---- | ------            |
| Normal | \<leader\>r | Rename Symbol |
| Normal | \<leader\>a | View Code Actions For Symbol |
| Normal | \<leader\>k | Display Information About Symbol |
| Normal | \<leader\>w | Open Window Navigation |
| Normal | \<leader\>t | Toggle File Explorer |
| Normal | \<C-t\> | Open Terminal |
| Normal | \<F5\> | Debug Continue |
| Normal | \<F10\> | Debug Step Over |
| Normal | \<F11\> | Debug Step Into |
| Normal | \<leader\>b | Toggle Breakpoint |
| Normal | \<leader\>ds | Start Debugger |
| Normal | \<leader\>dt | Stop Debugger |
| Normal | \\d | Toggle Debug UI |
| Normal | \<leader\>ff| Find Files |
| Normal | \<leader\>fg | Find in Files |
| Normal | \<leader\>fb | Find in Buffers |
| Normal | \<leader\>fh | Find in Help |
| Normal | \<leader\>bl | Open Git Blame |
| Normal | \<leader\>mg | Open Merge Tool |
| Normal | \<leader\>x | Toggle Diagnostics |
| Normal | \<leader\>u | Go To Usages | 
| Normal | \<leader\>df | Go To Definition |
| Normal | \<leader\>qf | View Quick Fixes |

