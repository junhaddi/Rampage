
/// Allows Multi Stick
var key_number = 4;

for(var i = 0; i < key_number; i++)
{
    /// Softkey Position
    var softkey_move = (device_mouse_x_to_gui(i) > stick_xpos - 70 && device_mouse_x_to_gui(i) < stick_xpos + 70 && device_mouse_y_to_gui(i) > stick_ypos - 70 && device_mouse_y_to_gui(i) < stick_ypos + 70);
    var softkey_attack = (device_mouse_x_to_gui(i) > stick_xposAtk - 70 && device_mouse_x_to_gui(i) < stick_xposAtk + 70 && device_mouse_y_to_gui(i) > stick_yposAtk - 70 && device_mouse_y_to_gui(i) < stick_yposAtk + 70);
    var softkey_skill = (device_mouse_x_to_gui(i) > skill_xpos - 30 && device_mouse_x_to_gui(i) < skill_xpos + 30 && device_mouse_y_to_gui(i) > skill_ypos - 30 && device_mouse_y_to_gui(i) < skill_ypos + 30);
    var softkey_pause = (device_mouse_x_to_gui(i) > pause_xpos - 16 && device_mouse_x_to_gui(i) < pause_xpos + 16 && device_mouse_y_to_gui(i) > pause_ypos - 16 && device_mouse_y_to_gui(i) < pause_ypos + 16);
    
    if (device_mouse_check_button_released(i, mb_left))
    {
        device_touch[i] = -1;
    }
    
    if (device_mouse_check_button_pressed(i, mb_left))
    {
        /// Touch Order
        for(var j = 0; j < key_number; j++)
        {
            if (device_touch[j] == -1)
            {
               device_touch[i] = j;
               break; 
            }
        }
           
        /// Stick Move
        if (softkey_move)
        {
            stick_device = device_touch[i];
            stick_move = 1;
        }
        
        /// Stick Attack
        if (softkey_attack)
        {
            stick_deviceAtk = device_touch[i];
            stick_moveAtk = 1;
        }
        
        /// Skill Button
        if (softkey_skill)
        {     
            button_skill = 1;
        }
        
        /// Pause Button
        if (softkey_pause)
        {
            audio_play_sound(sfx_click, 0, 0);
            instance_create(0, 0, sys_pause);
        }
    }
}

scr_stickMove(stick_device, 70, 10);
scr_stickAtk(stick_deviceAtk, 70, 10);
scr_buttonSkill(chr_class);
