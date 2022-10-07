/// @description Insert description here
// You can write your code in this editor

if (!shopOpen) exit;

for (var i=0; i<itemCount01; i++){
	var arr = items_hastronom01[| i]; 
	var itemL = arr[0];
	var itemR = arr[1];
}

var arr = items_hastronom01[| notselected];
var itemL = arr[0];
var itemR = arr[1];

var sprR = asset_get_index("sp_" + itemR)
var sprL = asset_get_index("sp_" + itemL)

draw_sprite_ext(sprR, 0, guiW/30.5*23, guiH/3, 0.5, 0.5, 0, c_grey, 1);
draw_sprite_ext(sprL, 0, guiW/11, guiH/3, 0.5, 0.5, 0, c_grey, 1);


//draw menu items

for (var i=0; i<itemCount; i++){
	var arr = items_hastronom[| i]; 
	var item = arr[0];
}

var arr = items_hastronom[| selected];
var item = arr[0];
var price = arr[1];

var spr = asset_get_index("sp_" + item);

draw_sprite(spr, 0, guiW/4, guiH/4);

//назва
draw_sprite_ext(sp_name_hastronom, 0, guiW/2, guiH/6, 2, 2, 0, c_white, 1)
