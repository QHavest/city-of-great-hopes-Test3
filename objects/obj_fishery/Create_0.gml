
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to but
items_fishery = ds_list_create();
ds_list_add(items_fishery, ["kalmar", 0.25]);
ds_list_add(items_fishery, ["korop", 0.50]);
ds_list_add(items_fishery, ["krab", 0.30]);
ds_list_add(items_fishery, ["oseledec", 0.10]);
ds_list_add(items_fishery, ["rybni_konservy", 0.20]);
ds_list_add(items_fishery, ["shchuka", 0.40]);
ds_list_add(items_fishery, ["vuhor", 0.35]);

itemCount = ds_list_size(items_fishery)

//items to the right and left
items_fishery01 = ds_list_create();
ds_list_add(items_fishery01, ["vuhor01","korop01"]);
ds_list_add(items_fishery01, ["kalmar01", "krab01"]);
ds_list_add(items_fishery01, ["korop01", "oseledec01"]);
ds_list_add(items_fishery01, ["krab01", "rybni_konservy01"]);
ds_list_add(items_fishery01, ["oseledec01", "shchuka01"]);
ds_list_add(items_fishery01, ["rybni_konservy01","vuhor01"]);
ds_list_add(items_fishery01, ["shchuka01", "kalmar01"]);

itemCount01 = ds_list_size(items_fishery01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();


