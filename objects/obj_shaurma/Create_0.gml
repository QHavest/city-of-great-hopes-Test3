
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to but
items_shaurma = ds_list_create();
ds_list_add(items_shaurma, ["doner", 0.50]);
ds_list_add(items_shaurma, ["lula_kebap", 1]);
ds_list_add(items_shaurma, ["shaurma", 0.75]);

itemCount = ds_list_size(items_shaurma)

//items to the right and left
items_shaurma01 = ds_list_create();
ds_list_add(items_shaurma01, ["shaurma01","lula_kebap01"]);
ds_list_add(items_shaurma01, ["doner01", "shaurma01"]);
ds_list_add(items_shaurma01, ["lula_kebap01", "doner01"]);

itemCount01 = ds_list_size(items_shaurma01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
