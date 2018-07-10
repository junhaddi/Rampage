
if (stick_dirAtk != -1)
{
    /// Aim
    aim_dir = stick_dirAtk;    
    
    if (attack_delay == 0)
    {
        switch(chr_class)
        {
            case 0:
                scr_chr_attack1(1, attack_range);
                audio_play_sound(sfx_chr_attack1, 0, 0);
                break;
                        
            case 1:
                scr_chr_attack2(6, attack_range);
                audio_play_sound(sfx_chr_attack2, 0, 0);
                break;
                
            case 2:
                scr_chr_attack3(attack_range);
                audio_play_sound(sfx_chr_attack3, 0, 0);
                break;
        }
    }
}
else
{
    if (instance_move)
    {
        /// Walk
        aim_dir = stick_dir; 
    }
    
    /// Decrease Recoil
    recoil -= 0.2;
}

recoil = clamp(recoil, recoilMin, recoilMax);
