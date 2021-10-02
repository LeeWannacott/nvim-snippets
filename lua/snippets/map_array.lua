api = vim.api -- Shorten calling of the api.

function map_array()
  local str = [[
array1.map((element, index) => { console.log(element) })
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
  map_array = map_array
}
