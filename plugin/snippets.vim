" functions for each snippet

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

fun! React_c_loop()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/for_loop_c").for_loop_c()
endfun

fun! Map_array()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/map_array").map_array()
endfun

fun! Console_log()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/console_log").console_log()
endfun

fun! Promise()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/promise").promise()
endfun

fun! React_use_effect()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/react_use_effect").react_use_effect()
endfun

fun! For_in()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/for_in").for_in()
endfun

fun! Async_await()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/async_await").async_await()
endfun

fun! If_elseif()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/if_else").if_else()
endfun

fun! Switch_statement()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/switch_statement").switch_statement()
endfun


fun! For_of()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/for_of").for_of()
endfun


fun! Make_object()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/make_object").make_object()
endfun

fun! Make_array()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/make_array").make_array()
endfun


fun! Make_date()
    lua for k in pairs(package.loaded) do if k:match("^snippets") then package.loaded[k] = nill end end
    lua require("snippets/date").make_date()
endfun

" Keymappings to call different functions.
noremap <silent><leader>sfe :call For_each() <CR>
noremap <silent><leader>src :call React_class_component () <CR>
noremap <silent><leader>srf :call React_functional_component() <CR>
noremap <silent><leader>sus :call React_use_state () <CR>
noremap <silent><leader>sue :call React_use_effect () <CR>
noremap <silent><leader>sfc :call React_c_loop () <CR>
noremap <silent><leader>sm :call Map_array () <CR>
noremap <silent><leader>sp :call Promise () <CR>
noremap <silent><leader>sfi :call For_in () <CR>
noremap <silent><leader>sfo :call For_of () <CR>
noremap <silent><leader>saa :call Async_await () <CR>
noremap <silent><leader>sie :call If_elseif () <CR>
noremap <silent><leader>ss :call Switch_statement () <CR>
noremap <silent><leader>so :call Make_object () <CR>
noremap <silent><leader>sa :call Make_array () <CR>
noremap <silent><leader>sd :call Make_date () <CR>
