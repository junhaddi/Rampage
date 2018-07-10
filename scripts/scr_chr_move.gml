///scr_chr_move(chr_speed)


if (stick_dir != -1)
{
    var mx = lengthdir_x(argument0, stick_dir);
    var my = lengthdir_y(argument0, stick_dir);
    
    if (!place_meeting(x + argument0 * sign(mx), y, obj_block))
    {
        x += round(mx);
    }
    if (!place_meeting(x, y + argument0 * sign(my), obj_block))
    {
        y += round(my);
    }
    x = clamp(x, 64, room_width - 64);
    y = clamp(y, 64, room_height - 64);

    /// Character Wave xDirection
    if (instance_move == 0)
    {
        if (stick_dir > 90 && stick_dir < 270)
        {
            instance_waveXdir = -1;
        }
        else
        {
            instance_waveXdir = 1;
        }
    }
    instance_move = 1;
}
else
{
    /// Reset
    instance_move = 0;
}

/// Character Direction
if (aim_dir > 90 && aim_dir < 270)
{   
    instance_xdir = -1;
}
else
{
    instance_xdir = 1;
}
