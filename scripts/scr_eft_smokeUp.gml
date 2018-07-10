///scr_eft_smokeUp(x, y, number)


/// Smoke
repeat(argument2)
{
    var a = instance_create(argument0 + random_range(-10, 10), argument1 + random_range(-10, 10), eft_smokeUp); 
    a.smoke_speed = random_range(1, 2);
    
    var image_scale = random_range(0.5, 1);
    a.image_xscale = image_scale;
    a.image_yscale = image_scale;
}
