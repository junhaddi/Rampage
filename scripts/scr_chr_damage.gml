
/// Damage!
var damage = other.enemy_damage;

if (chr_damageDelay == 0 && damage > 0 && chr_hp > 0 && chr_shield == 0)
{
    if (chr_hp > damage)
    {
        chr_hp -= damage;
        
        /// Play Sound
        rand_sound = choose(0, 1, 2);
        if (rand_sound == 0)
        {
            audio_play_sound(sfx_damage1, 0, 0);
        }
        if (rand_sound == 1)
        {
            audio_play_sound(sfx_damage2, 0, 0);
        }
        if (rand_sound == 2)
        {
            audio_play_sound(sfx_damage3, 0, 0);
        }
    }
    else
    {
        /// Die!
        chr_die = 1;
        
        /// Play Sound
        audio_play_sound(sfx_chr_die, 0, 0);
    }
    
    /// Damage Delay
    chr_damageDelay = 1;
    alarm[0] = room_speed * 2;
    
    /// Effect
    scr_eft_blood(x, y, 10);
    
    camera_shake = 20;
    sys_inGame.damage_alpha = 0.4;
    
    sys_inGame.hp_size = 0.5;
    sys_inGame.alarm[6] = 0;
}
