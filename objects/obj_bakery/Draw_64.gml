/// @description Insert description here
// You can write your code in this editor

if (!shopOpen) exit;

draw_sprite(sp_baton, 0, guiW/4, guiH/4);
draw_sprite_ext(sp_bulka_z_povidlom01, 0, guiW+50, guiH+50, 0.5, 0.5, 0, c_white, 1);
draw_sprite_ext(sp_zavarna_bulka01, 0, guiW+100, guiH-50, 0.5, 0.5, 0, c_white, 1);
//draw menu items

//for (var i=0; i<itemCount; i++){
//	var arr = items_bakery[| i]; 
//	var item = arr[0];
//}

//var arr = items[| selected];
//var item = arr[0];
//var price = arr [1];