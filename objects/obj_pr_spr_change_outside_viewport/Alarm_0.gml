// безпосередня заміна спрайта на випадковий
cam_y = camera_get_view_y(view_camera[view_current]);
cam_x = camera_get_view_x(view_camera[view_current]);
if x < cam_x or x > cam_x+cam_w or y < cam_y or y > cam_y+cam_h
{if ch_count=0{
	ch_count=1;
	sprite_index=spr[irandom_range(1,num_of_sprites)];
//	show_debug_message("mene nevudno")
}}
else
{
	ch_count=0;
//show_debug_message("I vas Buchiu!")
}
alarm[0]=300;