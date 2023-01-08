if (global.LANGUAGE = "eng"){
	image_index = 1
	layer_set_visible("text_ukr", false)
	layer_set_visible("text_eng", true)
	} 
	else if  (global.LANGUAGE = "ua"){
		image_index = 0
		layer_set_visible("text_ukr", true)
		layer_set_visible("text_eng", false)
		}
if global.settings_open = 1
{
	layer_set_visible("text_ukr", false)
	layer_set_visible("text_eng", false)
}
//x_key = keyboard_check_pressed(ord("X"))
//if (x_key){
/*	switch (x_key)
	{
		case 0: global.LANGUAGE="ua"; break;
		case 1: global.LANGUAGE="eng"; break;
		
	}*/
//}
/*if (x_key)
{
	global.LANGUAGE="ua";
	image_index += 1;
}*/
	//image_index += 1;

	
