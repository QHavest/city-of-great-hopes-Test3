draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, inv_UI_w, inv_UI_h, 
	inv_UI_x_closed, inv_UI_y, scale, scale, c_white, 1);

//-------------money
draw_set_font(Font_for_money)
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_color(inv_UI_x_closed + 168, info_money_y, string(global.money), 1,1,1,1,1);

#region
var ii, ix, iy, xx, yy, iitem, inv_grid, sx, sy;
ii = 0; ix = 0; iy = 0; inv_grid = global.ds_inventory;

repeat(inv_slots){
	//x,y location for slot
	xx = slots_x + ((cell_size + buffer_btw_slots)*ix*scale);
	yy = slots_y + ((cell_size + buffer_btw_slots)*iy*scale);
	//Item
	iitem = inv_grid[# 0, ii];
	sx = (iitem mod spr_inv_items_columns)*cell_size;
	sy = (iitem div spr_inv_items_columns)*cell_size;
	//Draw Item
	draw_sprite_part_ext(spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1)

	//Increment
	ii += 1;
	ix = ii mod inv_slots_w;
	iy = ii div inv_slots_w;	
}
#endregion
