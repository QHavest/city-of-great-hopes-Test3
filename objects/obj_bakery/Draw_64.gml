/// @description Insert description here
// You can write your code in this editor

if (!shopOpen) exit;

for (var i=0; i<itemCount01; i++){
	var arr = items_bakery01[| i]; 
	var itemL = arr[0];
	var itemR = arr[1];
}

var arr = items_bakery01[| notselected];
var itemL = arr[0];
var itemR = arr[1];

var sprR = asset_get_index("sp_" + itemR)
var sprL = asset_get_index("sp_" + itemL)

draw_sprite_ext(sprR, 0, guiW/30.5*22, guiH/3, 0.5, 0.5, 0, c_white, 1);
draw_sprite_ext(sprL, 0, guiW/8.5, guiH/3, 0.5, 0.5, 0, c_white, 1);


//draw menu items

for (var i=0; i<itemCount; i++){
	var arr = items_bakery[| i]; 
	var item = arr[0];
}

var arr = items_bakery[| selected];
var item = arr[0];
var price = arr[1];

var spr = asset_get_index("sp_" + item);

draw_sprite(spr, 0, guiW/4, guiH/4);

//Стрілочки і назва
draw_sprite_ext(sp_name_bakery, 0, guiW/2, guiH/6, 2, 2, 0, c_white, 1)
draw_sprite(sp_left_click, 0, guiW/15, guiH/2.3)
draw_sprite(sp_right_click, 0, guiW/30*27, guiH/2.3)