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

The plugin spec and plugin specific keymaps are in lua/plugins/\*.lua.

## Dependencies

* Neovim ~ 0.11.0
* Git  ~ 2.48.1
* Go ~ 1.24.0
* Required language servers (see below)

## Language Server Support

This configuration does not use Mason to install language servers, and they must be installed
as binaries on the PATH. Currently used language servers are:

* gopls - Go language server

## Usage

You can copy this configuraton by cloning this repo. into your config path, you can find it by opening 
Neovim and typing `:echo stpath("config")`. When you open neovim it should automatically load all of the plugins.

