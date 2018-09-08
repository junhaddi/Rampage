///scr_chr_attack3(attack_range)


var a = instance_create(x + lengthdir_x(15, aim_dir), y + lengthdir_y(15, aim_dir), obj_bulletChr2);
a.direction = irandom_range(aim_dir - recoil, aim_dir + recoil);
a.image_angle = a.direction;
a.speed = irandom_range(15, 20);

a.chr_damage = 10;
a.bullet_special = item_index;

/// Through
if (a.bullet_special == 2)
{
    a.bullet_throughMax = 5;
}
else
{
    a.bullet_throughMax = 2;
}
a.bullet_through = 0;

/// Bounce
if (a.bullet_special == 3)
{
    a.bullet_bounceMax = 5;
}
else
{
    a.bullet_bounceMax = 0;
}
a.bullet_bounce = 0;

/// Destroy Point
a.dx = a.x;
a.dy = a.y;
a.destroy_range = argument0;

/// Stuck!
with(a)
{
    if (bullet_special != 2 && place_meeting(x, y, obj_block))
    {
        instance_destroy();   
    }
}

attack_delay = 1;
alarm[1] = attack_delayTime;

/// Increase Recoil
recoil += 1;
