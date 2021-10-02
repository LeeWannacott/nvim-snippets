
api = vim.api -- Shorten calling of the api.

function console_log()
  local str = [[
console.log("hello world")
]]

 function print_snippet()
    lines = {}
    for s in str:gmatch("[^\r\n]+") do
        table.insert(lines, s)
    end
    -- paste snippet
    api.nvim_put(lines,'l',true,true)
  end

    print_snippet()

end
return{
  console_log = console_log
}
