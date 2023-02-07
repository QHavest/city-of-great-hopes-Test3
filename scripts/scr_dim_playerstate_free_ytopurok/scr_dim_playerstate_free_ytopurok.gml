function scr_dim_playerstate_free_ytopurok(){
//визначення швидкості руху персонажа (біг, спокійна хотьба)

if(status = STATUS.ACTIVE){
	
	if (move == 0 ) spd = walkspd;
	else spd = runspd;

	directx = keyr - keyl; 
	directy = keyup - keydown;
	//directxy -= directxy - directx ;
	// змешення швидкості ходьби по діагоналі
	if( directy !=0 && directx !=0 ) spd=spd*0.8; 

	hsp = directx*spd;
	vsp = directy*walkspd*0.5;
	
	if instance_exists(obj_pauser){
		hsp = 0;
		vsp = 0;
	}
	if (!in_sequence){
	x += hsp
	y -= vsp
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

// рух вправо
if (x>xprevious){ 
	// біг
	if (move and keyr) {
		sprite_index =asset_get_index ("spr_dim_" + sprit +"_run_right");
		//if !audio_is_playing(snd_run) audio_play_sound(snd_run,global.player_gain,0);
		//if audio_is_playing(s_walk) audio_stop_sound(s_walk);
	}
	// ходьба
	else {
		sprite_index = asset_get_index("spr_dim_" + sprit +"_move_right");
		//if !audio_is_playing(s_walk) audio_play_sound(s_walk,global.player_gain,0);
		//if audio_is_playing(snd_run) audio_stop_sound(snd_run);
	}
	lastmove = 0;
 }

 // рух вліво
if (x<xprevious){ 
	if (move and keyl)  // біг
	{
		sprite_index = asset_get_index ("spr_dim_" + sprit +"_run_left");
	}	
	else // ходьба
	{
		sprite_index = asset_get_index("spr_dim_" + sprit + "_move_left");	
	}
		lastmove = 1;
}

// анімація ходьби по вертикалі відповідно до останнього напрямку руху по горизонталі
if (y!=yprevious && lastmove==0 && x==xprevious) 
{
		sprite_index = asset_get_index("spr_dim_" + sprit +"_move_right");	
}
if (y!=yprevious && lastmove==1 && x==xprevious)
{
	sprite_index = asset_get_index( "spr_dim_" + sprit + "_move_left");
}

// без руху
if (x==xprevious && y==yprevious && lastmove ==0) sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r");
if (x==xprevious && y==yprevious && lastmove ==1) sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");

}