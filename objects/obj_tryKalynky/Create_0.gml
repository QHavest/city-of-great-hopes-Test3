
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to but
items_try_kalynky = ds_list_create();
ds_list_add(items_try_kalynky, ["bronzovyi_certificat", 50]);
ds_list_add(items_try_kalynky, ["sribnyi_certificat", 100]);
ds_list_add(items_try_kalynky, ["zolotoi_certificat", 250]);
ds_list_add(items_try_kalynky, ["platynovui_certificat", 500]);
ds_list_add(items_try_kalynky, ["diamantovyi_certificat", 1000]);

itemCount = ds_list_size(items_try_kalynky)

//items to the right and left
items_try_kalynky01 = ds_list_create();
ds_list_add(items_try_kalynky01, ["diamantovyi_certificat01","sribnyi_certificat01"]);
ds_list_add(items_try_kalynky01, ["bronzovyi_certificat01", "zolotoi_certificat01"]);
ds_list_add(items_try_kalynky01, ["sribnyi_certificat01", "platynovui_certificat01"]);
ds_list_add(items_try_kalynky01, ["zolotoi_certificat01", "diamantovyi_certificat01"]);
ds_list_add(items_try_kalynky01, ["platynovui_certificat01","bronzovyi_certificat01"]);

itemCount01 = ds_list_size(items_try_kalynky01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
