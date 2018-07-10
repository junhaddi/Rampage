///scr_camera(zoom_speed, move_speed)


/// Target Setting
var camera_xpos = obj_chr.x;
var camera_ypos = obj_chr.y;

/// Zoom In/Out View
if (abs(game_width * camera_zoom - camera_vwview) > 4)
{
    camera_vwview += (game_width * camera_zoom - camera_vwview) / argument0;
    camera_vhview += (game_height * camera_zoom - camera_vhview) / argument0; 
}
else
{
    camera_vwview = game_width * camera_zoom;
    camera_vhview = game_height * camera_zoom;
}
view_wview = floor(camera_vwview);
view_hview = floor(camera_vhview);
 
/// Moving Camera
x += floor((camera_xpos - x) / argument1);
y += floor((camera_ypos - y) / argument1);

/// Moving View
view_xview = floor(median(0, x - view_wview / 2, room_width - view_wview));
view_yview = floor(median(0, y - view_hview / 2, room_height - view_hview));

/// Shaking View
view_xview += irandom_range(-camera_shake, camera_shake);
view_yview += irandom_range(-camera_shake, camera_shake);
view_angle = irandom_range(-camera_shake, camera_shake);

if (camera_shake > 0)
{
    camera_shake -= camera_shake / 4;
}
