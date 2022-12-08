
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to buy
if(global.LANGUAGE = "ua"){
items_stolovka = ds_list_create();
ds_list_add(items_stolovka, ["kavkazkiy_aromat", 0.80, 32]);
ds_list_add(items_stolovka, ["nostalgia", 0.60, 33]);
ds_list_add(items_stolovka, ["partiynyi_shyk", 0.99, 34]);
ds_list_add(items_stolovka, ["proletarskyi_hostinec", 0.50, 35]);
ds_list_add(items_stolovka, ["smak_dutunstva", 0.80, 36]);
ds_list_add(items_stolovka, ["studentskyi_nabir", 0.30, 37]);

//items to the right and left
items_stolovka01 = ds_list_create();
ds_list_add(items_stolovka01, ["studentskyi_nabir01","nostalgia01"]);
ds_list_add(items_stolovka01, ["kavkazkiy_aromat01", "partiynyi_shyk01"]);
ds_list_add(items_stolovka01, ["nostalgia01", "proletarskyi_hostinec01"]);
ds_list_add(items_stolovka01, ["partiynyi_shyk01", "smak_dutunstva01"]);
ds_list_add(items_stolovka01, ["proletarskyi_hostinec01", "studentskyi_nabir01"]);
ds_list_add(items_stolovka01, ["smak_dutunstva01","kavkazkiy_aromat01"]);
}
if(global.LANGUAGE = "eng"){
items_stolovka = ds_list_create();
ds_list_add(items_stolovka, ["kavkazkiy_aromat_eng", 0.80, 32]);
ds_list_add(items_stolovka, ["nostalgia_eng", 0.60, 33]);
ds_list_add(items_stolovka, ["partiynyi_shyk_eng", 0.99, 34]);
ds_list_add(items_stolovka, ["proletarskyi_hostinec_eng", 0.50, 35]);
ds_list_add(items_stolovka, ["smak_dutunstva_eng", 0.80, 36]);
ds_list_add(items_stolovka, ["studentskyi_nabir_eng", 0.30, 37]);

//items to the right and left
items_stolovka01 = ds_list_create();
ds_list_add(items_stolovka01, ["studentskyi_nabir_eng01","nostalgia_eng01"]);
ds_list_add(items_stolovka01, ["kavkazkiy_aromat_eng01", "partiynyi_shyk_eng01"]);
ds_list_add(items_stolovka01, ["nostalgia_eng01", "proletarskyi_hostinec_eng01"]);
ds_list_add(items_stolovka01, ["partiynyi_shyk_eng01", "smak_dutunstva_eng01"]);
ds_list_add(items_stolovka01, ["proletarskyi_hostinec_eng01", "studentskyi_nabir_eng01"]);
ds_list_add(items_stolovka01, ["smak_dutunstva_eng01","kavkazkiy_aromat_eng01"]);
}
itemCount = ds_list_size(items_stolovka)
itemCount01 = ds_list_size(items_stolovka01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
