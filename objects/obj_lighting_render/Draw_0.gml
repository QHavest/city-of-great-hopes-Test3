
/*surface_set_target(lighting_surface);

draw_clear_alpha(c_black,0.6);
with(obj_Lighting_Cutour){
	gpu_set_blendmode(bm_subtract)
	draw_sprite_ext(sprite_index, image_index, x,y, image_xscale, image_yscale, 0, c_white,1)
	gpu_set_blendmode(bm_normal);
}
surface_reset_target();

draw_surface(lighting_surface, 0,0);*/

if (surface_exists(light_surf)) {
	surface_set_target(light_surf);
	draw_clear(c_black);
	with(obj_lamp_night_container){
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(spr_lamp_night_container, 0, x,y, 1, 1, 0, c_white,.5);
		
	gpu_set_blendmode(bm_normal);
	draw_sprite_ext(spr_lamp_night_container, 0, x,y, 1, 1, 0, c_white,.7);
	}
	
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(light_surf, 0, 0, 1, 1,0, c_white, global.darknes);
} else {
      light_surf = surface_create(room_width, room_height);
}