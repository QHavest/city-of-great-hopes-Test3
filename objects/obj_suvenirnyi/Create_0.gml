
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to but
items_suvenir = ds_list_create();
ds_list_add(items_suvenir, ["bulava_hetmana", 10]);
ds_list_add(items_suvenir, ["homunkul", 20]);
ds_list_add(items_suvenir, ["kartyna_maestro", 15]);
ds_list_add(items_suvenir, ["konyk_horbunok", 3]);
ds_list_add(items_suvenir, ["ryba_pyla", 12]);

itemCount = ds_list_size(items_suvenir)

//items to the right and left
items_suvenir01 = ds_list_create();
ds_list_add(items_suvenir01, ["ryba_pyla01","homunkul01"]);
ds_list_add(items_suvenir01, ["bulava_hetmana01", "kartyna_maestro01"]);
ds_list_add(items_suvenir01, ["homunkul01", "konyk_horbunok01"]);
ds_list_add(items_suvenir01, ["kartyna_maestro01", "ryba_pyla01"]);
ds_list_add(items_suvenir01, ["konyk_horbunok01", "bulava_hetmana01"]);

itemCount01 = ds_list_size(items_suvenir01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
