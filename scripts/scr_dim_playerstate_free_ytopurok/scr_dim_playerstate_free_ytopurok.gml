function scr_dim_playerstate_free_ytopurok(){
//визначення швидкості руху персонажа (біг, спокійна хотьба)
if(status = STATUS.ACTIVE){
	if (run == 0 or InRoomMode = true) {spd = walkspd;}
	else if (InRoomMode = false) {spd = runspd;}
	
	directx = keyr - keyl; 
	directy = keyup - keydown;

	// змешення швидкості ходьби по діагоналі
	if( directy !=0 && directx !=0 ) {spd=spd*0.8; }
	
	hsp = directx*(spd+krok);
	vsp = directy*(spd+krok)*0.5;
	if ((s_ind = false) and (hsp!=0 or vsp!=0))
	{
		s_ind=true;
		image_index=0;
	}

	if (!in_sequence){
		x += hsp;
		y -= vsp;
	}
	// move sound was here

	//горизонтальна колізія
 /*	if(place_meeting(x + hsp, y, obj_invisiblewall)){
	//	while(!place_meeting(x+sign(hsp), y, obj_invisiblewall))
	//		x += sign(hsp);
		hsp = 0;
	}*/
	if(place_meeting(x + hsp, y, obj_pr_NPC_move) or place_meeting(x + hsp, y, obj_pr_NPC_back)){
		if (status = STATUS.ACTIVE){last_active = true}
		status = STATUS.NONE;
		alarm[1]=10;
		hsp = 0;
	}
	
	

	//вертикальна колізія
	if(place_meeting(x, y + vsp, obj_invisiblewall)){
		while(!place_meeting(x, y + sign(vsp) , obj_invisiblewall))
			y += sign(vsp);
		vsp = 0;
	}

}

sprit="Ytopurok";

// анімація ходьби по вертикалі відповідно до останнього напрямку руху по горизонталі


if (y!=yprevious && lastmove==0) {sprite_index = asset_get_index( "spr_dim_" + sprit +"_move_right_new1");}
if (y!=yprevious && lastmove==1) {sprite_index = asset_get_index( "spr_dim_" + sprit + "_move_left_new1");}

if (x>xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit +"_move_right_new1");
lastmove = 0;}
if (x<xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit + "_move_left_new1");
lastmove = 1;}	

// БІГ вправо і вліво

if(InRoomMode = false){
if (keyboard_check(vk_space) and x>xprevious) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_right");
lastmove = 0;}

if (keyboard_check(vk_space) and x<xprevious) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_left");
lastmove = 1;}
}

// без руху
if (x==xprevious && y==yprevious)
{
	if (lastmove == 0) {sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r"); }
	else			{sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l"); }
	s_ind=0;
	if (!InRoomMode and global.dialog_end and !global.shop and !global.map and !global.diary)
	{
		activity--;
		if activity=0 
		{
			activity = activity_pause;
			state = PLAYERSTATE.SMOKE;
		}
	}
}
}