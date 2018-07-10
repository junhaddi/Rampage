///scr_stickMove(device_number, stick_max, stick_min)


if (stick_move)
{
    /// Touch Position
    touch_xpos = device_mouse_x_to_gui(argument0);
    touch_ypos = device_mouse_y_to_gui(argument0);  

    /// Moving Stick
    if (point_distance(touch_xpos, touch_ypos, stick_xpos, stick_ypos) < argument1)
    {
        stick_x = touch_xpos - stick_xpos;
        stick_y = touch_ypos - stick_ypos;
    }
    else
    {
        stick_x = lengthdir_x(argument1, point_direction(stick_xpos, stick_ypos, touch_xpos, touch_ypos));
        stick_y = lengthdir_y(argument1, point_direction(stick_xpos, stick_ypos, touch_xpos, touch_ypos));
    }
    
    /// Character Movement Direction
    if (point_distance(touch_xpos, touch_ypos, stick_xpos, stick_ypos) > argument2)
    {
        /// Move
        stick_dir = point_direction(stick_xpos, stick_ypos, touch_xpos, touch_ypos);
    }
    else
    {
        /// Stop
        stick_dir = -1;
    }
}
else
{
    stick_x += -stick_x / 5;
    stick_y += -stick_y / 5;
}


/// Released Stick
if (device_mouse_check_button_released(argument0, mb_left))
{
    /// Reset
    stick_move = 0;
    stick_dir = -1;
    
    touch_xpos = -1;
    touch_ypos = -1;
    
    stick_device = -1;
}
