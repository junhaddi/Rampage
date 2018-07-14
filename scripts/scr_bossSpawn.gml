///scr_bossSpawn(game_campStage, rand_pos);


/// Spawn Boss
var boss_name;
switch(argument0)
{
    case 0:
        boss_name = obj_boss1;
        break;
        
    case 1:
        boss_name = obj_boss2;
        break;
        
    case 2:
        boss_name = obj_boss3;
        break;
}

switch(argument1)
{
    case 0:
        repeat(2)
        {
            instance_create(irandom(room_width), 0, boss_name);
        }
        break;
        
    case 1:
        instance_create(room_width, irandom(room_height), boss_name);
        break;
        
    case 2:
        instance_create(irandom(room_width), room_height, boss_name);
        break;
        
    case 3:
        instance_create(0, irandom(room_height), boss_name);
        break;
}
