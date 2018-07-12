///scr_buttonSkill(device_number, chr_class)


/// Active Skill
if (button_skill)
{
    if (obj_chr.chr_skillDelay == 0)
    {
        switch(argument1)
        {
            case 0:
                scr_chr_skill1(room_speed * 10);
                break;
            case 1:
                scr_chr_skill2(room_speed * 5);
                break;
            case 2:
                scr_chr_skill3(room_speed * 15);
                break;
        }
        obj_chr.chr_skillDelay = 1;
    }
    button_skill = 0;
}
