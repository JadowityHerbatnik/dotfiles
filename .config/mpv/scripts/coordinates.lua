mp.add_key_binding("MOUSE_BTN0", function()
    local x, y = mp.get_mouse_pos()
    mp.osd_message("x: " ..x.. " y: " ..y.. "", 1)
end)
