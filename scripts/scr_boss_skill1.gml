///scr_boss_skill1(skill_delay)

attack_circle = (attack_circle + 10) mod 360;

var a = instance_create(x, y, obj_bulletEnemy1);
a.direction = attack_circle;
a.image_angle = a.direction;
a.speed = 10;

a.dx = a.x;
a.dy = a.y;
a.destroy_range = 100;

alarm[2] = argument0;
