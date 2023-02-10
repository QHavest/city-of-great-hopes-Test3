/// @description Insert description here
// You can write your code in this editor
depth = -bbox_bottom;
	

	// змешення швидкості ходьби по діагоналі
//	if( directy !=0 && directx !=0 ) spd=spd*0.8; 

	//hsp = direct*spd;
	//vsp = directy*walkspd*0.5;
	
	if instance_exists(obj_pauser)
	{
		hsp = 0;
		vsp = 0;
	}
	//горизонтальна колізія

	// діалог з зважаючим ГГ
if (!place_meeting(x,y,obj_dim_player1) and !place_meeting(x,y,obj_dim_player2)) 
{
	if start_counter=1 start_counter=0;
	time_res -= 1;
	time_res=clamp(time_res,0,pause_time_S*room_speed)
}

if place_meeting(x+hsp, y, obj_dim_player1) and global.dialog_end and !global.shop and obj_dim_player1.status=STATUS.ACTIVE  and start_counter=0 and time_res=0
{scr_create_textbox(text_id,spr_ic);
	start_counter=1;
	time_res=pause_time_S*room_speed;
}
if place_meeting(x+hsp, y, obj_dim_player2) and  global.dialog_end and !global.shop and obj_dim_player2.status=STATUS.ACTIVE and start_counter=0 and time_res=0
{scr_create_textbox(text_id,spr_ic);
	start_counter=1;
	time_res=pause_time_S*room_speed;
}	
//	if(place_meeting(x + hsp, y, obj_dim_player1) or place_meeting(x + hsp, y, obj_dim_player2))
//	{
	//	while(!place_meeting(x+sign(hsp), y, obj_invisiblewall))
	//		x += sign(hsp);
//		hsp = 0;
		// dialog
//	}
//	else {
		if(place_meeting(x + hsp, y, obj_invisiblewall)){
		while(!place_meeting(x+sign(hsp), y, obj_invisiblewall))
			x += sign(hsp);
		hsp = 0;
	}
	//}

	if (!in_sequence){
	x += hsp
	y -= vsp
	}
	//вертикальна колізія
//	if(place_meeting(x, y + vsp, obj_invisiblewall)){
//		while(!place_meeting(x, y + sign(vsp) , obj_invisiblewall))
//			y += sign(vsp);
//		vsp = 0;
//	}






// анімація руху
// рух вправо
if (x>xprevious){
	sprite_index = spr_move_r
	lastmove = 0;
} 

 // рух вліво
if (x<xprevious){ 
		sprite_index = spr_move_l
		lastmove = 1;
}

// анімація ходьби по вертикалі відповідно до останнього напрямку руху по горизонталі
if (y!=yprevious && lastmove==0 && x==xprevious) 
{
		sprite_index = spr_move_r
}

if (y!=yprevious && lastmove==1 && x==xprevious)
{
	sprite_index = spr_move_l

}

// без руху
if (x==xprevious && y==yprevious && lastmove ==-1) sprite_index = spr_back
if (x==xprevious && y==yprevious && lastmove ==0) sprite_index = spr_l
if (x==xprevious && y==yprevious && lastmove ==1) sprite_index = spr_r

