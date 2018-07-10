///scr_stickAtk(device_number, stick_max, stick_min)


if (stick_moveAtk)
{
    /// Touch Position
    touch_xposAtk = device_mouse_x_to_gui(argument0);
    touch_yposAtk = device_mouse_y_to_gui(argument0);  
    
    /// Moving Stick
    if (point_distance(touch_xposAtk, touch_yposAtk, stick_xposAtk, stick_yposAtk) < argument1)
    {
        stick_xAtk = touch_xposAtk - stick_xposAtk;
        stick_yAtk = touch_yposAtk - stick_yposAtk;
    }
    else
    {
        stick_xAtk = lengthdir_x(argument1, point_direction(stick_xposAtk, stick_yposAtk, touch_xposAtk, touch_yposAtk));
        stick_yAtk = lengthdir_y(argument1, point_direction(stick_xposAtk, stick_yposAtk, touch_xposAtk, touch_yposAtk));
    }
    
    /// Character Movement Direction
    if (point_distance(touch_xposAtk, touch_yposAtk, stick_xposAtk, stick_yposAtk) > argument2)
    {
        /// Move
        stick_dirAtk = point_direction(stick_xposAtk, stick_yposAtk, touch_xposAtk, touch_yposAtk);
    }
    else
    {
        /// Stop
        stick_dirAtk = -1;
    }
}
else
{
    stick_xAtk += -stick_xAtk / 5;
    stick_yAtk += -stick_yAtk / 5;
}

/// Released Stick
if (device_mouse_check_button_released(argument0, mb_left))
{
    /// Reset
    stick_moveAtk = 0;
    stick_dirAtk = -1;
    
    touch_xposAtk = -1;
    touch_yposAtk = -1;
    
    stick_deviceAtk = -1;
}
