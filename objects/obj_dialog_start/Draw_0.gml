// коли хтось наступив і діалог ще не початий
if (place_meeting(x, y, obj_dim_player1) and obj_dim_player1.status=STATUS.ACTIVE){

contakt=true;
}
if (place_meeting(x, y, obj_dim_player2) and obj_dim_player2.status=STATUS.ACTIVE)
{
contakt=true;
}
else {contakt=false;}
if (global.dialog_end) 
{
	if (keyboard_check_pressed(ord("E")) and !global.shop and contakt = true)
	{
		global.text_id=text_id;
		contakt = false;
		global.dialogue_move = true;
		global.zaniatui = true;
		//data for moving
		obj_dim_player1.xsd = x+x1;
		obj_dim_player1.ysd = y+y1;
		obj_dim_player2.xsd = x+x2;
		obj_dim_player2.ysd = y+y2;
		obj_dim_player1.napriam=n1;
		obj_dim_player2.napriam=n2;
	}
}
