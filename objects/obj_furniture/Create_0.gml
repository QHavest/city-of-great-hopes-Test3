
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to but
items_furniture = ds_list_create();
ds_list_add(items_furniture, ["bufet_prybaltyka", 80]);
ds_list_add(items_furniture, ["dyvan_zhytomyr", 50]);
ds_list_add(items_furniture, ["dzerkalo_navisne", 35]);
ds_list_add(items_furniture, ["seyf_broniovanyi",250]);

itemCount = ds_list_size(items_furniture)

//items to the right and left
items_furniture01 = ds_list_create();
ds_list_add(items_furniture01, ["seyf_broniovanyi01","dyvan_zhytomyr01"]);
ds_list_add(items_furniture01, ["bufet_prybaltyka01", "dzerkalo_navisne01"]);
ds_list_add(items_furniture01, ["dyvan_zhytomyr01", "seyf_broniovanyi01"]);
ds_list_add(items_furniture01, ["dzerkalo_navisne01", "bufet_prybaltyka01"]);

itemCount01 = ds_list_size(items_furniture01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
