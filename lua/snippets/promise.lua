api = vim.api -- Shorten calling of the api.

function promise()
  local str = [[
fetch('http://example.com/movies.json')
  .then(response => response.json())
  .then(data => console.log(data));
  .catch(err => console.log("error",err))
  .finally(() => console.log("Promise complete!"))
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
  promise = promise
}
