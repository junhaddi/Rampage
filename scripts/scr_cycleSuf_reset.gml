
/// Reset Day Cycle
surface_set_target(cycle_surface);
draw_clear(c_black);

/// Reset Glow
var cycle_glowSize = 1 + random_range(-0.02, 0.02);

/// Draw Glow
var rw = game_width / view_wview;
var rh = game_height / view_hview;

/// Set Blend Mode
draw_set_blend_mode(bm_subtract);


/// Character
with(obj_chr)
{
    draw_sprite_ext(spr_glow, 0, (x - view_xview) * rw, (y - view_yview) * rh, cycle_glowSize * rw * 5, cycle_glowSize * rh * 5, 0, c_white, 1);
}

/// Torch
with(torch)
{
    draw_sprite_ext(spr_glow, 0, (x - view_xview) * rw, (y - view_yview - 8) * rh, cycle_glowSize * rw * 5, cycle_glowSize * rh * 5, 0, c_white, 1);
}

/// Boom
with(eft_boom)
{
    draw_sprite_ext(spr_glow, 0, (x - view_xview) * rw, (y - view_yview) * rh, cycle_glowSize * rw * 3, cycle_glowSize * rh * 3, 0, c_white, image_alpha);
}

/// Bullet
with(bullet)
{
    draw_sprite_ext(spr_glow, 0, (x - view_xview) * rw, (y - view_yview) * rh, cycle_glowSize * rw, cycle_glowSize * rh, 0, c_white, image_alpha / 2);
}
with(eft_bullet)
{
    draw_sprite_ext(spr_glow, 0, (x - view_xview) * rw, (y - view_yview) * rh, cycle_glowSize * rw, cycle_glowSize * rh, 0, c_white, image_alpha / 3);
}

draw_set_blend_mode(bm_normal);
surface_reset_target();
