depth = -1;
scale = 1;
cell_size = 90;
show_inventory = false;

gui_W = display_get_gui_width();
gui_H = display_get_gui_height();

inv_UI_w = 460;
inv_UI_h = 560;

spr_inv_UI = spr_inventory_UI;

inv_UI_x = (gui_W * 1) - (inv_UI_w * 1 * scale);
inv_UI_y = (gui_H * 0.5) - (inv_UI_h * 0.5 * scale);

//////////Info-Player

ds_player_info = ds_grid_create(2, 4)