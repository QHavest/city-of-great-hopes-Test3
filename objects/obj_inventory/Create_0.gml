global.money = 10;
depth = -1;
scale = 1;
cell_size = 58;
show_inventory = false;
spr_inv_UI = spr_inventory_UI;
spr_inv_items = spr_shopping_list;

gui_W = display_get_gui_width();
gui_H = display_get_gui_height();

inv_UI_w = 488;
inv_UI_h = 700;

inv_UI_y = (gui_H * 0.5) - (inv_UI_h * 0.5 * scale);

////////////Moving_Inventory

inv_UI_x_closed = (gui_W * 1) - (inv_UI_w * 1 * scale) + 450;
inv_UI_x_opened = (gui_W * 1) - (inv_UI_w * 1 * scale);
inv_UI_x_closed_static = (gui_W * 1) - (inv_UI_w * 1 * scale) + 450;
inv_UI_x_opened_static = (gui_W * 1) - (inv_UI_w * 1 * scale);

slots_x = inv_UI_x_closed_static + 30;
slots_y = inv_UI_y + (105 * scale);

//////////Info-Player

info_money_y =  inv_UI_y + 42;

#region
//////////////column and rows(help im lost)
spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

///////////Slots
buffer_btw_slots = 12; //кількість пікселів між слотами

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
	height				= 53,
}
	
#endregion
