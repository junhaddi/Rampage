
//////////////////////////////////////////////////////////////////////
/// Game Reset
////////////////////////////////////////////////////////////////////

/// Character
chr_hp = chr_hpMax;
chr_die = 0;


/// Touch Order
device_touch[0] = -1;
device_touch[1] = -1;
device_touch[2] = -1;
device_touch[3] = -1;

stick_device = -1;
stick_deviceAtk = -1;
button_skill = -1;

touch_xpos = -1;
touch_ypos = -1;
touch_xposAtk = -1;
touch_yposAtk = -1;

stick_move = 0;
stick_dir = -1;
stick_x = 0;
stick_y = 0;

stick_moveAtk = 0;
stick_dirAtk = -1;
stick_xAtk = 0;
stick_yAtk = 0;


/// Game Cycle
cycle_day = 0;

cycle_alpha = 0;
cycle_textAlpha = 0;

game_progress = 0;
game_progressMax = (cycle_dayLength + cycle_nightLength) * (cycle_dayMax + 2);

enemy_spawn = 1;
enemy_boss = 0;


/// UI Effect
damage_alpha = 0;
hp_size = 1;

rescovery_xpos = 0;
