///scr_wave(wave_speed, wave_min)


if (instance_move)
{
    var wave_speed = instance_waveTime / argument0;
    instance_waveTime += 1;
    
    instance_scale = abs(cos(wave_speed)) / (1 / (1 - argument1)) + argument1;
    instance_angle = sin(wave_speed) * 15;
}
else
{
    /// Reset
    instance_waveTime = 0;
    instance_scale = 1;
    instance_angle = 0;
}


