
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
	with(obj_lamp_night_container){
	gpu_set_blendmode(bm_normal);
	draw_sprite_ext(spr_woi_invisible_wall, 0, x,y, 10, 10, 0, c_white,.7);
	}
} else {
      light_surf = surface_create(room_width, room_height);
}