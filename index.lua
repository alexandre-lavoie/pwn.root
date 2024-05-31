local crash_button = get("crash-button")

crash_button.on_click(function ()
    while true do
        crash_button.on_click(function () end)
    end
end)

local leak_button = get("leak-button")
local leak_result = get("leak-result")
leak_result.set_opacity(0)

function file_exists(path)
    f, err = loadfile(path)
    return not string.find(err, "No such file")
end

leak_button.on_click(function ()
    leak_result.set_opacity(0)

    local os = "?"

    if file_exists("C:\\Windows\\System32\\cmd.exe") then
        os = "Windows"
    elseif file_exists("/usr/lib/libc.so") then
        os = "Arch Linux"
    elseif file_exists("/etc/passwd") then
        os = "Linux"
    end

    leak_result.set_content("Result: " .. os)

    leak_result.set_opacity(1)
end)
