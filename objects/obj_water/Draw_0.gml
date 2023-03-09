// коли наступає утопирок
draw_self()
if place_meeting(x, y+zone_y, obj_dim_player1) and drowings = true and obj_dim_player1.status=STATUS.ACTIVE
{	
	draw_sprite_ext(help_sprite, -1,  obj_dim_player1.x + help_x, obj_dim_player1.y + help_y, 0.5, 0.5, 0, -1, 1)
}
// коли наступає крис
if place_meeting(x, y+zone_y, obj_dim_player2) and  drowings = true and obj_dim_player2.status=STATUS.ACTIVE
{
	draw_sprite_ext(help_sprite, -1,  obj_dim_player2.x + help_x, obj_dim_player2.y + help_y, 0.5, 0.5, 0, -1, 1)
}
