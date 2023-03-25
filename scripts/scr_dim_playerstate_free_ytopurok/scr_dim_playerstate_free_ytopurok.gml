function scr_dim_playerstate_free_ytopurok(){
//визначення швидкості руху персонажа (біг, спокійна хотьба)
if(status = STATUS.ACTIVE){
	if (run == 0 or InRoomMode = true) spd = walkspd;
	else if (InRoomMode = false) spd = runspd;
	
	directx = keyr - keyl; 
	directy = keyup - keydown;

	// змешення швидкості ходьби по діагоналі
	if( directy !=0 && directx !=0 ) spd=spd*0.8; 
	hsp = directx*spd;
	vsp = directy*spd*0.5;

	if (!in_sequence){
	x += hsp
	y -= vsp
	}
	
	if (hsp!= 0 or vsp != 0){
	if (run == false){ 
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
	
	
	//горизонтальна колізія
	if(place_meeting(x + hsp, y, obj_invisiblewall)){
		while(!place_meeting(x+sign(hsp), y, obj_invisiblewall))
			x += sign(hsp);
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


if (y!=yprevious && lastmove==0 ) sprite_index = asset_get_index( "spr_dim_" + sprit +"_move_right_new");
if (y!=yprevious && lastmove==1 ) sprite_index = asset_get_index( "spr_dim_" + sprit + "_move_left_new");

if (x>xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit +"_move_right_new");
lastmove = 0;}
if (x<xprevious){ sprite_index = asset_get_index("spr_dim_" + sprit + "_move_left_new");
lastmove = 1;}	

// БІГ вправо і вліво

if(InRoomMode = false){
if (keyboard_check(vk_space) and x>xprevious) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_right");runspd =8;
lastmove = 0;}

if (keyboard_check(vk_space) and x<xprevious) {sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_left");runspd = 8;
lastmove = 1;}
}

// без руху
//if(global.dialogue_move = true){
	if (x==xprevious && y==yprevious && lastmove ==0) sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r");
	if (x==xprevious && y==yprevious && lastmove ==1) sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");
//}
}