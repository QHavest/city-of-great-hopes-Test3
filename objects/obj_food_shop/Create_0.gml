
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to buy
if(global.LANGUAGE = "ua"){
items_hastronom = ds_list_create();
ds_list_add(items_hastronom, ["cukor", 0.25, 15]);
ds_list_add(items_hastronom, ["ikra", 9, 16]);
ds_list_add(items_hastronom, ["kovbasa", 2, 17]);
ds_list_add(items_hastronom, ["moloko", 0.50, 18]);
ds_list_add(items_hastronom, ["okorochok", 3, 19]);
ds_list_add(items_hastronom, ["popsi", 0.30, 20]);
ds_list_add(items_hastronom, ["sil", 0.25, 21]);
ds_list_add(items_hastronom, ["syr", 1, 22]);
ds_list_add(items_hastronom, ["voda", 0, 23]);

//items to the right and left
items_hastronom01 = ds_list_create();
ds_list_add(items_hastronom01, ["sil01","ikra01"]);
ds_list_add(items_hastronom01, ["cukor01", "kovbasa01"]);
ds_list_add(items_hastronom01, ["ikra01", "moloko01"]);
ds_list_add(items_hastronom01, ["kovbasa01", "okorochok01"]);
ds_list_add(items_hastronom01, ["moloko01", "popsi01"]);
ds_list_add(items_hastronom01, ["okorochok01","sil01"]);
ds_list_add(items_hastronom01, ["popsi01", "syr01"]);
ds_list_add(items_hastronom01, ["sil01", "voda01"]);
ds_list_add(items_hastronom01, ["syr01", "cukor01"]);
}
if(global.LANGUAGE = "eng"){
items_hastronom = ds_list_create();
ds_list_add(items_hastronom, ["cukor_eng", 0.25, 15]);
ds_list_add(items_hastronom, ["ikra_eng", 9, 16]);
ds_list_add(items_hastronom, ["kovbasa_eng", 2, 17]);
ds_list_add(items_hastronom, ["moloko_eng", 0.50, 18]);
ds_list_add(items_hastronom, ["okorochok_eng", 3, 19]);
ds_list_add(items_hastronom, ["popsi_eng", 0.30, 20]);
ds_list_add(items_hastronom, ["sil_eng", 0.25, 21]);
ds_list_add(items_hastronom, ["syr_eng", 1, 22]);
ds_list_add(items_hastronom, ["voda_eng", 0, 23]);

//items to the right and left
items_hastronom01 = ds_list_create();
ds_list_add(items_hastronom01, ["sil_eng01","ikra_eng01"]);
ds_list_add(items_hastronom01, ["cukor_eng01", "kovbasa_eng01"]);
ds_list_add(items_hastronom01, ["ikra_eng01", "moloko_eng01"]);
ds_list_add(items_hastronom01, ["kovbasa_eng01", "okorochok_eng01"]);
ds_list_add(items_hastronom01, ["moloko_eng01", "popsi_eng01"]);
ds_list_add(items_hastronom01, ["okorochok_eng01","sil_eng01"]);
ds_list_add(items_hastronom01, ["popsi_eng01", "syr_eng01"]);
ds_list_add(items_hastronom01, ["sil_eng01", "voda_eng01"]);
ds_list_add(items_hastronom01, ["syr_eng01", "cukor_eng01"]);
}

itemCount = ds_list_size(items_hastronom)
itemCount01 = ds_list_size(items_hastronom01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
