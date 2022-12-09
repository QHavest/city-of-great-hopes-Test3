
shopOpen = false; // цеймагазин відкритий?


selected = 0;
notselected = 0;

//items to buy
if(global.LANGUAGE = "ua"){
items_shaurma = ds_list_create();
ds_list_add(items_shaurma, ["doner", 0.50, 29]);
ds_list_add(items_shaurma, ["lula_kebap", 1, 30]);
ds_list_add(items_shaurma, ["shaurma", 0.75, 31]);

//items to the right and left
items_shaurma01 = ds_list_create();
ds_list_add(items_shaurma01, ["shaurma01","lula_kebap01"]);
ds_list_add(items_shaurma01, ["doner01", "shaurma01"]);
ds_list_add(items_shaurma01, ["lula_kebap01", "doner01"]);
}
if(global.LANGUAGE = "eng"){
items_shaurma = ds_list_create();
ds_list_add(items_shaurma, ["doner_eng", 0.50, 29]);
ds_list_add(items_shaurma, ["lula_kebap_eng", 1, 30]);
ds_list_add(items_shaurma, ["shaurma_eng", 0.75, 31]);

//items to the right and left
items_shaurma01 = ds_list_create();
ds_list_add(items_shaurma01, ["shaurma_eng01","lula_kebap_eng01"]);
ds_list_add(items_shaurma01, ["doner_eng01", "shaurma_eng01"]);
ds_list_add(items_shaurma01, ["lula_kebap_eng01", "doner_eng01"]);
}
itemCount = ds_list_size(items_shaurma)
itemCount01 = ds_list_size(items_shaurma01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
