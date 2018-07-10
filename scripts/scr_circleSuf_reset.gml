
/// Reset Day Cycle
surface_set_target(circle_surface);
draw_clear(c_black);

/// Set Blend Mode
draw_set_blend_mode(bm_subtract);

/// Draw Blend Sprite
draw_sprite_ext(spr_roomCircle, 0, game_width / 2, game_height / 2, circle_size, circle_size, 0, c_white, 1);


draw_set_blend_mode(bm_normal);
surface_reset_target();
