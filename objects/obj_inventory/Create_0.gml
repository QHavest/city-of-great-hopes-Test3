depth = -1;
scale = 1;
cell_size = 72;
show_inventory = false;
spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_shopping_list;
spr_frame = spr_frame_for_inventory;

count_slot_pos = 0;

gui_W = display_get_gui_width();
gui_H = display_get_gui_height();

inv_UI_w = 570;
inv_UI_h = 813;

inv_UI_y = (gui_H * 0.5) - (inv_UI_h * 0.5 * scale);

////////////Moving_Inventory

inv_UI_x_closed = (gui_W * 1) - (inv_UI_w * 1 * scale) + 550;
inv_UI_x_opened = (gui_W * 1) - (inv_UI_w * 1 * scale)+50;
inv_UI_x_closed_static = (gui_W * 1) - (inv_UI_w * 1 * scale) + 550;
inv_UI_x_opened_static = (gui_W * 1) - (inv_UI_w * 1 * scale)+50;

slots_x = inv_UI_x_closed_static + 88;
slots_y = inv_UI_y + (147 * scale);

frame_x = inv_UI_x_closed_static + 88;
frame_y = inv_UI_y + (147 * scale);
frame_ii = 0;


#region
//////////////column and rows(help im lost)
spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

///////////Slots
buffer_btw_slots = 9; //кількість пікселів між слотами

inv_slots = 10;
inv_slots_w = 5;
inv_slots_h = 2;

//Data structure for inventory
 
global.ds_inventory = ds_grid_create(2, inv_slots);

enum item{
	none				= 0,
	baton				= 1,
	bulka_z_povidlom	= 2,
	cukerochky			= 3,
	keksiki				= 4,
	ponchiki			= 5,
	syrna_bulka			= 6,
	zavarna_bulka		= 7,
	kalmar				= 8,
	korop				= 9,
	krab				= 10,
	oseledec			= 11,
	rybni_konservy		= 12,
	shchuka				= 13,
	vuhor				= 14,
	cukor				= 15,
	ikra				= 16,
	kovbasa				= 17, 
	moloko				= 18,
	okorochok			= 19,
	popsi				= 20,
	sil					= 21,
	syr					= 22,
	voda				= 23,
	uholek				= 24,
	valet				= 25,
	towarysh			= 26,
	shwarc				= 27,
	pan_fedir			= 28,
	doner				= 29,
	lula_kebap			= 30,
	shaurma				= 31,
	kavkazkiy_aromat	= 32,
	nostalgia			= 33,
	partiynyi_shyk		= 34,
	proletarskyi_hostinec = 35,
	smak_dutunstva		= 36,
	studentskyi_nabir	= 37,
	bulava_hetmana		= 38,
	homunkul			= 39,
	kartyna_maestro		= 40,
	konyk_horbunok		= 41,
	ryba_pyla			= 42,
	kasetnyk			= 43,
	mahnitofon			= 44,
	prohravach			= 45, 
	pylosos				= 46,
	radio				= 47,
	bronzovyi_certificat = 48,
	sribnyi_certificat	= 49,
	zolotoi_certificat	= 50,
	platynovui_certificat = 51,
	diamantovyi_certificat = 52,
	ticket_kasa			=	54,
	height				= 55,
}
	
global.ds_inventory[# 0, 1] = 1;
global.ds_inventory[# 0, 2] = 39;
global.ds_inventory[# 0, 9] = 53;

#endregion
