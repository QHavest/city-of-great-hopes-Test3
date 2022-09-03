/*
surface_set_target(lighting_surface);

draw_clear_alpha(c_black,0.1);
with(obj_lamp_night_container){
	gpu_set_blendmode(bm_subtract)
	draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, 0, c_white,1)
	gpu_set_blendmode(bm_normal);
}
surface_reset_target();

draw_surface(lighting_surface, 0,0);*/