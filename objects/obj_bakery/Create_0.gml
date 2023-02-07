shopOpen = false; // цеймагазин відкритий? // любий магазин відкритий?

selected = 0;
notselected = 0;
item_bought = false; //перевірка чи був куплений предмет.

//items to but [назва продукту, ціна, номер в enum]
if(global.LANGUAGE = "ua"){
items_bakery = ds_list_create();
ds_list_add(items_bakery, ["baton", 0.25, 1]);
ds_list_add(items_bakery, ["bulka_z_povidlom", 0.50, 2]);
ds_list_add(items_bakery, ["cukerochky", 0.30, 3]);
ds_list_add(items_bakery, ["keksiki", 0.10, 4]);
ds_list_add(items_bakery, ["ponchiki", 0.20, 5]);
ds_list_add(items_bakery, ["syrna_bulka", 0.40, 6]);
ds_list_add(items_bakery, ["zavarna_bulka", 0.35, 7]);

//items to the right and left
items_bakery01 = ds_list_create();
ds_list_add(items_bakery01, ["zavarna_bulka01","bulka_z_povidlom01"]);
ds_list_add(items_bakery01, ["baton01", "cukerochky01"]);
ds_list_add(items_bakery01, ["bulka_z_povidlom01", "keksiki01"]);
ds_list_add(items_bakery01, ["cukerochky01", "ponchiki01"]);
ds_list_add(items_bakery01, ["keksiki01", "syrna_bulka01"]);
ds_list_add(items_bakery01, ["ponchiki01","zavarna_bulka01"]);
ds_list_add(items_bakery01, ["syrna_bulka01", "baton01"]);
}

if(global.LANGUAGE = "eng"){
items_bakery = ds_list_create();
ds_list_add(items_bakery, ["baton_eng", 0.25, 1]);
ds_list_add(items_bakery, ["bulka_z_povidlom_eng", 0.50, 2]);
ds_list_add(items_bakery, ["cukerochky_eng", 0.30, 3]);
ds_list_add(items_bakery, ["keksiki_eng", 0.10, 4]);
ds_list_add(items_bakery, ["ponchiki_eng", 0.20, 5]);
ds_list_add(items_bakery, ["syrna_bulka_eng", 0.40, 6]);
ds_list_add(items_bakery, ["zavarna_bulka_eng", 0.35, 7]);

//items to the right and left
items_bakery01 = ds_list_create();
ds_list_add(items_bakery01, ["zavarna_bulka_eng01","bulka_z_povidlom_eng01"]);
ds_list_add(items_bakery01, ["baton_eng01", "cukerochky_eng01"]);
ds_list_add(items_bakery01, ["bulka_z_povidlom_eng01", "keksiki_eng01"]);
ds_list_add(items_bakery01, ["cukerochky_eng01", "ponchiki_eng01"]);
ds_list_add(items_bakery01, ["keksiki_eng01", "syrna_bulka_eng01"]);
ds_list_add(items_bakery01, ["ponchiki_eng01","zavarna_bulka_eng01"]);
ds_list_add(items_bakery01, ["syrna_bulka_eng01", "baton01"]);
}
itemCount = ds_list_size(items_bakery);
itemCount01 = ds_list_size(items_bakery01);

guiW = display_get_gui_width();
guiH = display_get_gui_height();
