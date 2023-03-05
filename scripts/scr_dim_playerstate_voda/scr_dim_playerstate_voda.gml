/// @param numb_lavki_(string)
function scr_dim_playerstate_voda(){
// звук монетки яку вкидає крис
if self.sprite_index=spr_dim_Krus_voda and self.image_index=16
{global.money -= 0.1;
	audio_play_sound(snd_coins_buy,5,0,global.System_gain);}
	// коли анімація пиття закінчилась
if sprite_index=asset_get_index("spr_dim_"+sprit+"_voda") and scr_dim_animation_end(sprite_index) 
{
state=PLAYERSTATE.FREE;
global.dialogue_move = false;
start=0;
in_place=0;
obj_water.visible=true
}
}