///scr_mobGen(limit_enemy, spawn_enemyTime, spawn_itemTime)


/// Limit Spawn Enemy 
if (instance_number(enemy) < argument0)
{
    enemy_spawn = 1;
}

if (instance_number(enemy) >= argument0 || (cycle_day >= cycle_dayMax && cycle_alpha >= cycle_alphaMax))
{
    enemy_spawn = 0;
}

/// Spawn Enemy 
if (enemy_spawn)
{
    if (alarm[0] == -1)
    {
        /// Spawn Mob
        alarm[0] = room_speed * argument1; 
    }
}
else
{
    alarm[0] = 0;
}   

/// Spawn Item
if (alarm[1] == -1)
{
    /// Spawn Drop Box
    alarm[1] = room_speed * argument2; 
}
