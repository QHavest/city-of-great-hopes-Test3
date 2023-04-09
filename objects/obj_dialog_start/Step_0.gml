
if  ((place_meeting(x, y+zone_y, obj_dim_player1) or place_meeting(x, y+zone_y, obj_dim_player2)) and !global.dialogue_move)
{
	drowings = true;	
}
else if (drowings = true){
	drowings = false;
}