accept_key=keyboard_check_pressed(ord("Z"));
//textbox_x = camera_get_view_x(view_camera[0])
//textbox_y = camera_get_view_y(view_camera[0])+100;
textbox_x = obj_dim_player.x-120;
textbox_y = obj_dim_player.y-100;
//setup
if setup == false {
	setup = true;
	draw_set_font(Font1);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	// цикл для "листання" сторінок
	page_number = array_length(text);
	for(var p=0; p<page_number; p++){
		//визначення кількості символів на сторіні
		text_length[p] = string_length(text[p]);
		text_x_offset[p] = 44;
		}	
}
	 
// друкування тексту
if draw_char < text_length[0] {
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//  пролистування тексту
	if accept_key
{
	if draw_char == text_length[page]	
		{
		if page < page_number-1
			{
			page++;
			draw_char = 0;
			}
		else instance_destroy();
		}
	else {
		draw_char = text_length[page];
		
		}
	
}
// малюваня контурів тексту
txtb_img+=txtb_img_spd;
txt_spr_w = sprite_get_width(txtb_sprite);
txt_spr_h = sprite_get_height(txtb_sprite);
draw_sprite_ext(txtb_sprite, txtb_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/txt_spr_w, textbox_hight/txt_spr_h, 0, c_black, 1)
// вивід тксту
var _drawtext = string_copy(text[page], 1, draw_char)
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y+border,_drawtext, line_sep,line_widt,)

