
api = vim.api -- Shorten calling of the api.

function react_use_state()
    local str = [[const [count, setCount] = useState(0);]]

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
    react_use_state = react_use_state
}
