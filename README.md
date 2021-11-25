# toggle-bool

Vim plugin to toggle boolean values.


## List of boolean values supported

- true <-> false
- yes <-> no
- on <-> off
- 0 <-> 1
- enable(d) <-> disable(d)
- first <-> last
- before <-> after


## Installation

Use your plugin manager of choice.

- [vim-plug](https://github.com/junegunn/vim-plug)
  - Add `Plug 'vayw/vim-logic-toggle'` to .vimrc
  - Run `:PlugInstall`


## Usage

To invoke you need to call `:ToggleBool`. You can map accordingly.
For example, to map to `<leader>t` you need to add following to your *.vimrc*

    noremap <leader>t :ToggleBool<CR>
