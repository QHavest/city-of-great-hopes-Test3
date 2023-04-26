/// @param numb_lavki_(string)
function scr_dim_playerstate_AcLavka(lav_num){
// для виходу обох після завершення активної анімації	
if (keyboard_check(ord("Q"))) { quit=true;}

sprite_index = asset_get_index("spr_"+sprit+"_lavka_"+ lav_num +"_a");
if (sprite_index=asset_get_index("spr_"+sprit+"_lavka_"+lav_num +"_a") and scr_dim_animation_end(sprite_index) )
{
	switch (lav_num){
	case 1:state=PLAYERSTATE.LAVKA1 break
	case 2:state=PLAYERSTATE.LAVKA2	break
	case 3:state=PLAYERSTATE.LAVKA3 break
	case 4:state=PLAYERSTATE.LAVKA4	break
	}
	sprite_index = asset_get_index("spr_"+sprit+"_lavka_"+lav_num);
	image_index=0;
	alarm[0]=room_speed*10;
}
}