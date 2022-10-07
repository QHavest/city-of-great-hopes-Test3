
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to but
items_hastronom = ds_list_create();
ds_list_add(items_hastronom, ["cukor", 0.25]);
ds_list_add(items_hastronom, ["ikra", 9]);
ds_list_add(items_hastronom, ["kovbasa", 2]);
ds_list_add(items_hastronom, ["moloko", 0.50]);
ds_list_add(items_hastronom, ["okorochok", 3]);
ds_list_add(items_hastronom, ["popsi", 0.30]);
ds_list_add(items_hastronom, ["sil", 0.25]);
ds_list_add(items_hastronom, ["syr", 1]);
ds_list_add(items_hastronom, ["voda", 0]);

itemCount = ds_list_size(items_hastronom)

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

itemCount01 = ds_list_size(items_hastronom01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
