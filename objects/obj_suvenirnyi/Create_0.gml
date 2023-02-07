
shopOpen = false; // цеймагазин відкритий?


selected = 0;
notselected = 0;
global.item_bought = false;

//items to buy
if(global.LANGUAGE = "ua"){
items_suvenir = ds_list_create();
ds_list_add(items_suvenir, ["bulava_hetmana", 10, 38]);
ds_list_add(items_suvenir, ["homunkul", 20, 39]);
ds_list_add(items_suvenir, ["kartyna_maestro", 15, 40]);
ds_list_add(items_suvenir, ["konyk_horbunok", 3, 41]);
ds_list_add(items_suvenir, ["ryba_pyla", 12, 42]);

//items to the right and left
items_suvenir01 = ds_list_create();
ds_list_add(items_suvenir01, ["ryba_pyla01","homunkul01"]);
ds_list_add(items_suvenir01, ["bulava_hetmana01", "kartyna_maestro01"]);
ds_list_add(items_suvenir01, ["homunkul01", "konyk_horbunok01"]);
ds_list_add(items_suvenir01, ["kartyna_maestro01", "ryba_pyla01"]);
ds_list_add(items_suvenir01, ["konyk_horbunok01", "bulava_hetmana01"]);
}
if(global.LANGUAGE = "eng"){
items_suvenir = ds_list_create();
ds_list_add(items_suvenir, ["bulava_hetmana_eng", 10, 38]);
ds_list_add(items_suvenir, ["homunkul_eng", 20, 39]);
ds_list_add(items_suvenir, ["kartyna_maestro_eng", 15, 40]);
ds_list_add(items_suvenir, ["konyk_horbunok_eng", 3, 41]);
ds_list_add(items_suvenir, ["ryba_pyla_eng", 12, 42]);

//items to the right and left
items_suvenir01 = ds_list_create();
ds_list_add(items_suvenir01, ["ryba_pyla_eng01","homunkul_eng01"]);
ds_list_add(items_suvenir01, ["bulava_hetmana_eng01", "kartyna_maestro_eng01"]);
ds_list_add(items_suvenir01, ["homunkul_eng01", "konyk_horbunok_eng01"]);
ds_list_add(items_suvenir01, ["kartyna_maestro_eng01", "ryba_pyla_eng01"]);
ds_list_add(items_suvenir01, ["konyk_horbunok_eng01", "bulava_hetmana_eng01"]);
}
itemCount = ds_list_size(items_suvenir)
itemCount01 = ds_list_size(items_suvenir01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
