
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to buy
items_stolovka = ds_list_create();
ds_list_add(items_stolovka, ["kavkazkiy_aromat", 0.80, 32]);
ds_list_add(items_stolovka, ["nostalgia", 0.60, 33]);
ds_list_add(items_stolovka, ["partiynyi_shyk", 0.99, 34]);
ds_list_add(items_stolovka, ["proletarskyi_hostinec", 0.50, 35]);
ds_list_add(items_stolovka, ["smak_dutunstva", 0.80, 36]);
ds_list_add(items_stolovka, ["studentskyi_nabir", 0.30, 37]);

itemCount = ds_list_size(items_stolovka)

//items to the right and left
items_stolovka01 = ds_list_create();
ds_list_add(items_stolovka01, ["studentskyi_nabir01","nostalgia01"]);
ds_list_add(items_stolovka01, ["kavkazkiy_aromat01", "partiynyi_shyk01"]);
ds_list_add(items_stolovka01, ["nostalgia01", "proletarskyi_hostinec01"]);
ds_list_add(items_stolovka01, ["partiynyi_shyk01", "smak_dutunstva01"]);
ds_list_add(items_stolovka01, ["proletarskyi_hostinec01", "studentskyi_nabir01"]);
ds_list_add(items_stolovka01, ["smak_dutunstva01","kavkazkiy_aromat01"]);

itemCount01 = ds_list_size(items_stolovka01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
