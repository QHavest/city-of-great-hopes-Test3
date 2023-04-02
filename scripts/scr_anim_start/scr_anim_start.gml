/// @pararm shop_name
/// @pararm seller_spr
/// @pararm seller_spr_breath
/// @pararm seller_obj
// визначає останнього активного персонажа і задає змінні для зміни анімацій
// використовується ддля запуску анімацій без магазинів
function scr_anim_start(shop_name,spr_sel,spr_sel_def,obj_sel){
	global.zaniatui = true
	if obj_dim_player1.last_active
	{
		with(obj_dim_player1)
		{
		in_place=false;
		state=PLAYERSTATE.BUY;
		seller_spr_default=spr_sel_def;
		seller_spr=spr_sel;
		seller_obj=obj_sel;
		switch (shop_name)
		{
		case "Lotereia"	: buing_spr = spr_buy_Ytopur_tiket_1; break;
		case "Kasa"		: buing_spr = spr_buy_Ytopur_tiket_2; break;
		case "Souvenir"	: buing_spr = spr_buy_Ytopur_souvenir; break;
		case "Ninel"	: buing_spr = spr_buy_Ytopur_garbage; break;
		case "Fshery"	: buing_spr = spr_buy_Ytopur_potato; break;
		case "tryKalynky"	: buing_spr = spr_buy_Ytopur_blood_pakage; break;
		case "Backary"	: buing_spr = spr_buy_Ytopur_bakery; break;
		case "Bufet"	:	buing_spr = spr_buy_Ytopur_bulka; break;
		}
}
	}
	if obj_dim_player2.last_active
	{
		with(obj_dim_player2)
		{
		state=PLAYERSTATE.BUY;
		in_place=false;
		seller_spr_default=spr_sel_def;
		seller_spr=spr_sel;
		seller_obj=obj_sel;
		switch (shop_name)
		{
		case "Lotereia"	: buing_spr = spr_buy_Krus_tiket_1_R; break;
		case "Kasa"		: buing_spr = spr_buy_Krus_tiket_2_R; break;
		case "Souvenir"	: buing_spr = spr_buy_Krus_soyvenir_R; break;
		case "Ninel"	: buing_spr = spr_buy_Krus_soyvenir_R; break;
		case "Fshery"	: buing_spr = spr_buy_Krus_potato_R; break;
		case "tryKalynky"	: buing_spr = spr_buy_Krus_blood_pakage; break;
		case "Backary"	: buing_spr = spr_buy_Krus_bakery_R; break;
		case "Bufet"	:	buing_spr = spr_buy_Krus_bylka; break;
		}
		
}
}
	if spr_sel!=noone
	{
		obj_sel.image_index=0;
		obj_sel.sprite_index=spr_sel;
		
	}
	obj_dim_player1.status=STATUS.NONE
	obj_dim_player2.status=STATUS.NONE
//show_debug_message("yaiii")
}