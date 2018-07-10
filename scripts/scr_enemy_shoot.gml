///scr_enemy_shoot(number, recoil)


repeat(argument0)
{
    var a = instance_create(x + lengthdir_x(15, aim_dir), y + lengthdir_y(15, aim_dir), obj_bulletEnemy1);
    a.direction = irandom_range(aim_dir - argument1, aim_dir + argument1);
    a.image_angle = a.direction;
    a.speed = 10;
    
    a.dx = a.x;
    a.dy = a.y;
    a.destroy_range = 100;
}
