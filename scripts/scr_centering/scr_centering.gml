// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function centering(text, object_width, object_hight)
{
	res_widht = object_width / 2 
	len = string_length(text)
	object_hight -= 4
	font_width = object_hight / 4
	z = 0
	while true
	{
		z += 1
		if res_widht - (font_width*len) > 0
		{
			res_widht = res_widht - (font_width*len)
		}
	}
menu_font1 = font_add("aboba.ttf", object_hight - z, false, false, 32, 128)
return (res_widht)
}