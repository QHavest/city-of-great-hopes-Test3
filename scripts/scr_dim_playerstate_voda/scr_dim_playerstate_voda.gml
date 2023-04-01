/// @param numb_lavki_(string)
function scr_dim_playerstate_voda(){
	// коли анімація пиття закінчилась
if sprite_index=asset_get_index("spr_dim_"+sprit+"_voda") and scr_dim_animation_end(sprite_index) 
{
state=PLAYERSTATE.FREE;
global.dialogue_move = false;
start=0;
obj_dim_player1.in_place=0;
obj_dim_player2.in_place=0;
obj_water.visible=true
with (obj_dim_player1)
{
	if last_active = true
{
status = STATUS.ACTIVE;
last_active = 0;
}}

with (obj_dim_player2)
{
	if last_active = true
{
status = STATUS.ACTIVE;
last_active = 0;
}}
}
}