
shopOpen = false; // цеймагазин відкритий?

item_bought = 0;
selected = 0;
notselected = 0;

//items to buy
if(global.LANGUAGE = "ua"){
items_try_kalynky = ds_list_create();
ds_list_add(items_try_kalynky, ["bronzovyi_certificat", 50, 48]);
ds_list_add(items_try_kalynky, ["sribnyi_certificat", 100, 49]);
ds_list_add(items_try_kalynky, ["zolotoi_certificat", 250, 50]);
ds_list_add(items_try_kalynky, ["platynovui_certificat", 500, 51]);
ds_list_add(items_try_kalynky, ["diamantovyi_certificat", 1000, 52]);

//items to the right and left
items_try_kalynky01 = ds_list_create();
ds_list_add(items_try_kalynky01, ["diamantovyi_certificat01","sribnyi_certificat01"]);
ds_list_add(items_try_kalynky01, ["bronzovyi_certificat01", "zolotoi_certificat01"]);
ds_list_add(items_try_kalynky01, ["sribnyi_certificat01", "platynovui_certificat01"]);
ds_list_add(items_try_kalynky01, ["zolotoi_certificat01", "diamantovyi_certificat01"]);
ds_list_add(items_try_kalynky01, ["platynovui_certificat01", "bronzovyi_certificat01"]);
}
if(global.LANGUAGE = "eng"){
items_try_kalynky = ds_list_create();
ds_list_add(items_try_kalynky, ["bronzovyi_certificat_eng", 50, 48]);
ds_list_add(items_try_kalynky, ["sribnyi_certificat_eng", 100, 49]);
ds_list_add(items_try_kalynky, ["zolotoi_certificat_eng", 250, 50]);
ds_list_add(items_try_kalynky, ["platynovui_certificat_eng", 500, 51]);
ds_list_add(items_try_kalynky, ["diamantovyi_certificat_eng", 1000, 52]);

//items to the right and left
items_try_kalynky01 = ds_list_create();
ds_list_add(items_try_kalynky01, ["diamantovyi_certificat_eng01","sribnyi_certificat_eng01"]);
ds_list_add(items_try_kalynky01, ["bronzovyi_certificat_eng01", "zolotoi_certificat_eng01"]);
ds_list_add(items_try_kalynky01, ["sribnyi_certificat_eng01", "platynovui_certificat_eng01"]);
ds_list_add(items_try_kalynky01, ["zolotoi_certificat_eng01", "diamantovyi_certificat_eng01"]);
ds_list_add(items_try_kalynky01, ["platynovui_certificat_eng01", "bronzovyi_certificat_eng01"]);
}
itemCount = ds_list_size(items_try_kalynky)
itemCount01 = ds_list_size(items_try_kalynky01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
