

api = vim.api -- Shorten calling of the api.

function for_loop_c()
    local str = [[
for (let i = 0; array.length < 5; i++) {
  console.log(array[i])
}]]

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
    for_loop_c = for_loop_c
}
