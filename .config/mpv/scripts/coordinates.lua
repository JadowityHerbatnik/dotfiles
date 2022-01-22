mp.add_key_binding("MOUSE_BTN0", function()
    local time_pos = mp.get_property_number("time-pos")

    local mouse_x, mouse_y = mp.get_mouse_pos()
    local osd_width, osd_height = mp.get_osd_size()
    local video_width = mp.get_property("width")
    local video_height = mp.get_property("height")
    local x = ( mouse_x / osd_width ) * video_width
    local y = ( mouse_y / osd_height ) * video_height

    mp.osd_message("x: " ..x.. "\ny: " ..y.. "\ntime: " ..time_pos.. "s", 1)
end)
