
globalvar   game_width, game_height, camera_zoom, camera_vwview, camera_vhview, camera_shake,
            game_tryTotal, game_campStage,
            game_progressMax, game_progress, cycle_dayMax, cycle_day, cycle_alphaMax,
            
            chr_class, chr_hpMax, chr_hp, chr_rescoveryMax, chr_die,
            saveFile,
            
            stick_xpos, stick_ypos, stick_xposAtk, stick_yposAtk, skill_xpos, skill_ypos, pause_xpos, pause_ypos,
            
            device_touch, stick_device, stick_deviceAtk, button_skill
            touch_xpos, touch_ypos, touch_xposAtk, touch_yposAtk,
            stick_dir, stick_move, stick_x, stick_y,
            stick_dirAtk, stick_moveAtk, stick_xAtk, stick_yAtk,
                        
            enemy_number, enemy_boss, enemy_grid;


//////////////////////////////////////////////////////////////////////
/// Randomize Seed
////////////////////////////////////////////////////////////////////

randomize()
            

//////////////////////////////////////////////////////////////////////
/// Global Setting
////////////////////////////////////////////////////////////////////

/// Resolution(16:9 Portrait)
game_width = 640;
game_height = 360; 

display_set_gui_size(game_width, game_height);
display_reset(0, 0);

window_set_size(game_width, game_height);
surface_resize(application_surface, game_width, game_height);


/// Cycle
cycle_alphaMax = 0.96;


/// Character
chr_class = 0;

chr_rescoveryMax = room_speed * 20;
chr_hpMax = 10;


/// Touch
device_mouse_dbclick_enable(0);

stick_xpos = 120;
stick_ypos = 260;

stick_xposAtk = 520;
stick_yposAtk = 260;

skill_xpos = 580;
skill_ypos = 150;
 
pause_xpos = 40;
pause_ypos = 40;


/// Font
draw_set_font(ft_main);


//////////////////////////////////////////////////////////////////////
/// Save & Load
////////////////////////////////////////////////////////////////////

saveFile = "Rampage.sav";

if (!file_exists(saveFile))
{ 
    /// First Create
    var system_save = ds_map_create();
    
    system_save[? "file_tryTotal"] = 0;
    game_tryTotal = 0;
    system_save[? "file_campStage"] = 0;
    game_campStage = 0;
    ds_map_secure_save(system_save, saveFile); 
    ds_map_destroy(system_save);
}

/// Load Progress
var system_load = ds_map_secure_load(saveFile);

if (system_load[? "file_tryTotal"] != undefined)
{
    game_tryTotal = system_load[? "file_tryTotal"];
}
else
{
    /// Undefined
    system_load[? "file_tryTotal"] = 0;
    game_tryTotal = 0;
}

if (system_load[? "file_campStage"] != undefined)
{
    game_campStage = system_load[? "file_campStage"];
}
else
{
    /// Undefined
    system_load[? "file_campStage"] = 0;
    game_campStage = 0;
}
ds_map_destroy(system_load);
