/// @param numb_lavki_(string)
function scr_dim_playerstate_smoke(){
	// коли анімація пиття закінчилась
	if (sprite_index!=asset_get_index("spr_dim_"+sprit+"_smoke") )
	{
		sprite_index=asset_get_index("spr_dim_"+sprit+"_smoke")
	}
	else if (scr_dim_animation_end(sprite_index) )
	{
		state=PLAYERSTATE.FREE;
	}
}