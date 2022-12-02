shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to buy
if(global.LANGUAGE = "ua"){
items_technic = ds_list_create();
ds_list_add(items_technic, ["kasetnyk", 40, 43]);
ds_list_add(items_technic, ["mahnitofon", 100, 44]);
ds_list_add(items_technic, ["prohravach",50, 45]);
ds_list_add(items_technic, ["pylosos", 65, 46]);
ds_list_add(items_technic, ["radio", 35, 47]);

//items to the right and left
items_technic01 = ds_list_create();
ds_list_add(items_technic01, ["radio01","mahnitofon01"]);
ds_list_add(items_technic01, ["kasetnyk01", "prohravach01"]);
ds_list_add(items_technic01, ["mahnitofon01", "pylosos01"]);
ds_list_add(items_technic01, ["prohravach01", "radio01"]);
ds_list_add(items_technic01, ["pylosos01", "kasetnyk01"]);
}
if(global.LANGUAGE = "eng"){
items_technic = ds_list_create();
ds_list_add(items_technic, ["kasetnyk_eng", 40, 43]);
ds_list_add(items_technic, ["mahnitofon_eng", 100, 44]);
ds_list_add(items_technic, ["prohravach_eng",50, 45]);
ds_list_add(items_technic, ["pylosos_eng", 65, 46]);
ds_list_add(items_technic, ["radio_eng", 35, 47]);

//items to the right and left
items_technic01 = ds_list_create();
ds_list_add(items_technic01, ["radio_eng01","mahnitofon_eng01"]);
ds_list_add(items_technic01, ["kasetnyk_eng01", "prohravach_eng01"]);
ds_list_add(items_technic01, ["mahnitofon_eng01", "pylosos_eng01"]);
ds_list_add(items_technic01, ["prohravach_eng01", "radio_eng01"]);
ds_list_add(items_technic01, ["pylosos_eng01", "kasetnyk_eng01"]);
}

itemCount = ds_list_size(items_technic)
itemCount01 = ds_list_size(items_technic01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
