fun! Arrow_function()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/arrow_function").arrow_function()
endfun

fun! Fetch_data()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/fetch_data").fetch_data()
endfun

fun! For_each()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/for_each").for_each()
endfun


fun! React_functional_component()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/react_functional_component").react_functional_component()
endfun

fun! React_class_component()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/react_class_component").react_class_component()
endfun


fun! React_use_state()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/react_use_state").react_use_state()
endfun

" Keymappings to call different functions.
noremap <silent><leader>sa :call Arrow_function() <CR>
noremap <silent><leader>sfp :call Fetch_data() <CR>
noremap <silent><leader>sfe :call For_each() <CR>
noremap <silent><leader>srf :call React_functional_component() <CR>
noremap <silent><leader>src :call React_class_component () <CR>
noremap <silent><leader>sus :call React_use_state () <CR>
