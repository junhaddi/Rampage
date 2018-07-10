///scr_eft_blood(x, y, number)


/// Smoke
repeat(argument2)
{
    var a = instance_create(argument0, argument1, eft_blood);
    a.direction = random(360);
    a.image_angle = direction;
    a.speed = choose(2,3);
    
    a.image_xscale = choose(0.5, 1);
    a.image_yscale = choose(0.5, 1);
}
