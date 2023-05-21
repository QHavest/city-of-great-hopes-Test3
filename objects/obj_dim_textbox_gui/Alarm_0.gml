/// @description end dialog
//відкиття магазину після останньої репліки а не після опції (поки не використовується)
if (please_shop_open=1) {scr_shop_open(shop_name);}
else {
	global.zaniatui = false;
	with (obj_dim_player1)
		{
			if (last_active = true)
			{
				status = STATUS.ACTIVE;
		}}
	with (obj_dim_player2)
		{
			if (last_active = true)
			{
				status = STATUS.ACTIVE;
		}}
	}			
instance_destroy();