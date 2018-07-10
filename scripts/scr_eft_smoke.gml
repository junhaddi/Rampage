///scr_eft_smoke(x, y, number)


/// Smoke
for(var i = 0; i < 360; i += (360 / argument2))
{
    var a = instance_create(argument0, argument1, eft_smoke);
    a.direction = i
    a.image_angle = direction;
    a.speed = 3;
}
