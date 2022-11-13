
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to but [назва продукту, ціна, номер в enum]
items_bakery = ds_list_create();
ds_list_add(items_bakery, ["baton", 0.25, 1]);
ds_list_add(items_bakery, ["bulka_z_povidlom", 0.50, 2]);
ds_list_add(items_bakery, ["cukerochky", 0.30, 3]);
ds_list_add(items_bakery, ["keksiki", 0.10, 4]);
ds_list_add(items_bakery, ["ponchiki", 0.20, 5]);
ds_list_add(items_bakery, ["syrna_bulka", 0.40, 6]);
ds_list_add(items_bakery, ["zavarna_bulka", 0.35, 7]);

itemCount = ds_list_size(items_bakery)

//items to the right and left
items_bakery01 = ds_list_create();
ds_list_add(items_bakery01, ["zavarna_bulka01","bulka_z_povidlom01"]);
ds_list_add(items_bakery01, ["baton01", "cukerochky01"]);
ds_list_add(items_bakery01, ["bulka_z_povidlom01", "keksiki01"]);
ds_list_add(items_bakery01, ["cukerochky01", "ponchiki01"]);
ds_list_add(items_bakery01, ["keksiki01", "syrna_bulka01"]);
ds_list_add(items_bakery01, ["ponchiki01","zavarna_bulka01"]);
ds_list_add(items_bakery01, ["syrna_bulka01", "baton01"]);

itemCount01 = ds_list_size(items_bakery01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
