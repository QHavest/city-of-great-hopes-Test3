/// @description sprite_choice
switch (irandom_range(1,3))
{
case 1: 
	sprite_index= spr_vokzal_man_1_WR;
	num="1";
break
case 2:
	sprite_index=spr_vokzal_man_2_WR;
	num="2";
break
case 3:
	sprite_index= spr_vokzal_man_3_WR;
	num="3";
break
}
//path_start(pth_pasagir,2,path_action_stop,1
visible=true;

//asset_get_index("")