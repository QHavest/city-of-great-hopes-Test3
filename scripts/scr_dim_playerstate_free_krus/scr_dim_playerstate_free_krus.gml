	function scr_dim_playerstate_free_krus(){
//визначення швидкості руху персонажа (біг, спокійна хотьба)
if(status = STATUS.ACTIVE){
	if (run == 0 or InRoomMode = true) spd = walkspd;
	else if (InRoomMode = false) spd = runspd;
	
	directx = keyr - keyl; 
	directy = keyup - keydown;
	
	// змешення швидкості ходьби по діагоналі
	if( directy !=0 && directx !=0 ) spd = spd*0.8; 
	hsp = directx*(spd+krok);
	vsp = directy*(spd+krok)*0.5;
	
	if ((s_ind = false) and (hsp!=0 or vsp!=0))
	{
		s_ind=true;
		image_index=0;
	}
	
	if (!in_sequence){
	x += hsp
	y -= vsp
	}
	
	//////////ЗВУКИ ХОДЬБИ//////////////
/*	if (hsp!= 0 or vsp != 0){
		
		
	if (run == false or InRoomMode = true){ 
			if !audio_is_playing(snd_walk) audio_play_sound(snd_walk,0,0,global.player_gain);
			if audio_is_playing(snd_run) audio_stop_sound(snd_run);
	} 
	else if(run == true and InRoomMode = false){
		if !audio_is_playing(snd_run) audio_play_sound(snd_run,0,0,global.player_gain);
		if audio_is_playing(snd_walk) audio_stop_sound(snd_walk);
	}
	}else{
		audio_stop_sound(snd_walk);
		audio_stop_sound(snd_run);
	}
	*/
	//////////////////////////////////////
	//горизонтальна колізія
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


sprit="Krus";

// анімація ходьби по вертикалі відповідно до останнього напрямку руху по горизонталі

if (y!=yprevious && lastmove==0 ) sprite_index = asset_get_index( "spr_dim_" + sprit +"_move_right_new");
if (y!=yprevious && lastmove==1 ) sprite_index = asset_get_index( "spr_dim_" + sprit + "_move_left_new");

if (x>xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit +"_move_right_new");
lastmove = 0;}
if (x<xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit + "_move_left_new");
lastmove = 1;}

// БІГ вправо і вліво

if(InRoomMode = false){
if (keyboard_check(vk_space) and x>xprevious) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_right");lastmove = 0;}
if (keyboard_check(vk_space) and x<xprevious) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_left");lastmove = 1;}
}

//if(global.dialogue_move = false){
//	if (x==xprevious && y==yprevious && lastmove ==0) {sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r"); s_ind=0;}
//	if (x==xprevious && y==yprevious && lastmove ==1) {sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l"); s_ind=0;}
//}	
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