

api = vim.api -- Shorten calling of the api.
function make_date()

  local str = [[
const d = new Date(2018, 11, 24, 10);
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
    make_date = make_date
}
