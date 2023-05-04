/// @param numb_lavki_(string)
function scr_dim_playerstate_smoke(){
	// коли анімація пиття закінчилась
	if (sprite_index!=asset_get_index("spr_dim_"+sprit+"_smoke") )
	{
		sprite_index=asset_get_index("spr_dim_"+sprit+"_smoke")
	}
	// quit animation
	else if (scr_dim_animation_end(sprite_index) or keyr or keyl)
	{
		state=PLAYERSTATE.FREE;
	}
}