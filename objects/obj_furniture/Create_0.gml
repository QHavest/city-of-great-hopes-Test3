
shopOpen = false; // цеймагазин відкритий?

selected = 0;
notselected = 0;

//items to buy
if(global.LANGUAGE = "ua"){
items_furniture = ds_list_create();
ds_list_add(items_furniture, ["bufet_prybaltyka", 80]);
ds_list_add(items_furniture, ["dyvan_zhytomyr", 50]);
ds_list_add(items_furniture, ["dzerkalo_navisne", 35]);
ds_list_add(items_furniture, ["seyf_broniovanyi",250]);

//items to the right and left
items_furniture01 = ds_list_create();
ds_list_add(items_furniture01, ["seyf_broniovanyi01","dyvan_zhytomyr01"]);
ds_list_add(items_furniture01, ["bufet_prybaltyka01", "dzerkalo_navisne01"]);
ds_list_add(items_furniture01, ["dyvan_zhytomyr01", "seyf_broniovanyi01"]);
ds_list_add(items_furniture01, ["dzerkalo_navisne01", "bufet_prybaltyka01"]);
}
if(global.LANGUAGE = "eng"){
items_furniture = ds_list_create();
ds_list_add(items_furniture, ["bufet_prybaltyka_eng", 80]);
ds_list_add(items_furniture, ["dyvan_zhytomyr_eng", 50]);
ds_list_add(items_furniture, ["dzerkalo_navisne_eng", 35]);
ds_list_add(items_furniture, ["seyf_broniovanyi_eng",250]);

//items to the right and left
items_furniture01 = ds_list_create();
ds_list_add(items_furniture01, ["seyf_broniovanyi_eng01","dyvan_zhytomyr_eng01"]);
ds_list_add(items_furniture01, ["bufet_prybaltyka_eng01", "dzerkalo_navisne_eng01"]);
ds_list_add(items_furniture01, ["dyvan_zhytomyr_eng01", "seyf_broniovanyi_eng01"]);
ds_list_add(items_furniture01, ["dzerkalo_navisne_eng01", "bufet_prybaltyka_eng01"]);
}

itemCount = ds_list_size(items_furniture)
itemCount01 = ds_list_size(items_furniture01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
