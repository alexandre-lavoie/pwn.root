local crash_button = get("crash-button")

crash_button.on_click(function ()
    while true do
        crash_button.on_click(function () end)
    end
end)
