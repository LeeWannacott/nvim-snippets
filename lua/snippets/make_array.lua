api = vim.api -- Shorten calling of the api.
function make_array()
  local str = [[
const cars = ["Saab", "Volvo", "BMW"];
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
  make_array = make_array
}
