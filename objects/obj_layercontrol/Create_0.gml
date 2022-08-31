/// @description Insert description here
// You can write your code in this editor

global.CELL = 4;

global.GRID_H = room_height div global.CELL;

global.layerGrid = ds_grid_create(1, global.GRID_H);

for (var i=0; i<global.GRID_H;i++){
	global.layerGrid[# 0,i] = layer_create(layer_get_depth("Instances_obj")-i);

}




