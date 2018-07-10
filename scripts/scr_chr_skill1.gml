///scr_chr_skill1(time)


/// Class 1 Skill
obj_chr.recoilMax = obj_chr.recoilMin;
obj_chr.attack_range = 10000;

obj_chr.alarm[4] = argument0;
obj_chr.alarm[7] = room_speed * 30; 


/// Effect
if (camera_zoom != 0.75)
{
    camera_zoom = 1.5;
}
else
{
    scr_camera_zoomIn(1.5);
}
