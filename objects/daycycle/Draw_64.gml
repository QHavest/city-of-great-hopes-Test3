if (draw_daylight){
var c = light_colour;
draw_set_alpha(darkness);
draw_rectangle_color(0,0, guiWidth, guiHeight, c,c,c,c, false);
draw_set_alpha(1);
}

var c = c_yellow;
	draw_sprite_ext(spr_clock,0,100,120,2,2,0,c_white,1);
	draw_sprite_ext(spr_arrow_hrs,/*image_index*/0,100,150,2,2,-minutes*5,c_white,1)
	draw_sprite_ext(spr_arrow_min,/*image_index*/0,100,150,2,2,-hours*30,c_white,1)
/*draw_text_color(10,10, string(seconds), c,c,c,c, 1);
draw_text_color(10,30, string(minutes), c,c,c,c, 1);
draw_text_color(10,50, string(hours), c,c,c,c, 1);
draw_text_color(10,70, string(day), c,c,c,c, 1);
draw_text_color(10,90, string(season), c,c,c,c, 1);
draw_text_color(10,110, string(year), c,c,c,c, 1);*/