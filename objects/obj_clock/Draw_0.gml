//draw_sprite(spr_clock, 0,x,y);

//with(obj_clock){
draw_sprite(spr_clock, 0,x,y);
draw_sprite_ext(spr_arrow_hrs,/*image_index*/0,x,y+20,1,1,hours,c_white,1)
draw_sprite_ext(spr_arrow_min,/*image_index*/0,x,y+20,1,1,minutes,c_white,1)
//}