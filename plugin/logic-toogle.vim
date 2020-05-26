" key mapping
" noremap <leader>t :LogicToggle<CR>

let s:Words = {
  \ "true": "false",
  \ "True": "False",
  \ "on": "off",
  \ "enabled": "disabled",
  \ "Enabled": "Disabled",
  \ "Enable": "Disable",
  \ 'before': 'after',
  \ 'first': 'last',
  \ 'yes': 'no',
  \ }

function! LogicToggle()
	let word2toggle = expand("<cword>")
	if has_key(s:Words, word2toggle)
		let toggled = s:Words[word2toggle]
	else
		let toggled = "_"
		for [key, value] in items(s:Words)
		    if index(value, word2toggle) >= 0
			let toggled = key
			break
		    endif
		endfor
	endif
	if toggled != "_"
		execute "normal! viwc" . toggled . "\<Esc>"
	endif
endfunction
