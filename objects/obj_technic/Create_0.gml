shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to but
items_technic = ds_list_create();
ds_list_add(items_technic, ["kasetnyk", 40]);
ds_list_add(items_technic, ["mahnitofon", 100]);
ds_list_add(items_technic, ["prohravach",50]);
ds_list_add(items_technic, ["pylosos", 65]);
ds_list_add(items_technic, ["radio", 35]);

itemCount = ds_list_size(items_technic)

//items to the right and left
items_technic01 = ds_list_create();
ds_list_add(items_technic01, ["radio01","mahnitofon01"]);
ds_list_add(items_technic01, ["kasetnyk01", "prohravach01"]);
ds_list_add(items_technic01, ["mahnitofon01", "pylosos01"]);
ds_list_add(items_technic01, ["prohravach01", "radio01"]);
ds_list_add(items_technic01, ["pylosos01", "kasetnyk01"]);

itemCount01 = ds_list_size(items_technic01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
