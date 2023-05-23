
shopOpen = false; // цеймагазин відкритий?
item_bought=0;
selected = 0;
notselected = 0;

//items to but
if(global.LANGUAGE = "ua"){
items_fishery = ds_list_create();
ds_list_add(items_fishery, ["kalmar", 5, 8]);
ds_list_add(items_fishery, ["korop", 2, 9]);
ds_list_add(items_fishery, ["krab", 8, 10]);
ds_list_add(items_fishery, ["oseledec", 0.75, 11]);
ds_list_add(items_fishery, ["rybni_konservy", 0.50, 12]);
ds_list_add(items_fishery, ["shchuka", 3, 13]);
ds_list_add(items_fishery, ["vuhor", 4, 14]);

//items to the right and left
items_fishery01 = ds_list_create();
ds_list_add(items_fishery01, ["vuhor01","korop01"]);
ds_list_add(items_fishery01, ["kalmar01", "krab01"]);
ds_list_add(items_fishery01, ["korop01", "oseledec01"]);
ds_list_add(items_fishery01, ["krab01", "rybni_konservy01"]);
ds_list_add(items_fishery01, ["oseledec01", "shchuka01"]);
ds_list_add(items_fishery01, ["rybni_konservy01","vuhor01"]);
ds_list_add(items_fishery01, ["shchuka01", "kalmar01"]);
}
if(global.LANGUAGE = "eng"){
items_fishery = ds_list_create();
ds_list_add(items_fishery, ["kalmar_eng", 5, 8]);
ds_list_add(items_fishery, ["korop_eng", 2, 9]);
ds_list_add(items_fishery, ["krab_eng", 8, 10]);
ds_list_add(items_fishery, ["oseledec_eng", 0.75, 11]);
ds_list_add(items_fishery, ["rybni_konservy_eng", 0.50, 12]);
ds_list_add(items_fishery, ["shchuka_eng", 3, 13]);
ds_list_add(items_fishery, ["vuhor_eng", 4, 14]);

//items to the right and left
items_fishery01 = ds_list_create();
ds_list_add(items_fishery01, ["vuhor_eng01","korop_eng01"]);
ds_list_add(items_fishery01, ["kalmar_eng01", "krab_eng01"]);
ds_list_add(items_fishery01, ["korop_eng01", "oseledec_eng01"]);
ds_list_add(items_fishery01, ["krab_eng01", "rybni_konservy_eng01"]);
ds_list_add(items_fishery01, ["oseledec_eng01", "shchuka_eng01"]);
ds_list_add(items_fishery01, ["rybni_konservy_eng01","vuhor_eng01"]);
ds_list_add(items_fishery01, ["shchuka_eng01", "kalmar_eng01"]);
}
itemCount = ds_list_size(items_fishery)
itemCount01 = ds_list_size(items_fishery01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();


