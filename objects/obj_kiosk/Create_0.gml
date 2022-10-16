
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;
notselected = 0;

//items to but
items_kiosk = ds_list_create();
ds_list_add(items_kiosk, ["uholek", 0.25]);
ds_list_add(items_kiosk, ["valet", 0.50]);
ds_list_add(items_kiosk, ["towarysh", 0.30]);
ds_list_add(items_kiosk, ["shwarc", 0.10]);
ds_list_add(items_kiosk, ["pan_fedir", 0.20]);

itemCount = ds_list_size(items_kiosk)

//items to the right and left
items_kiosk01 = ds_list_create();
ds_list_add(items_kiosk01, ["pan_fedir01","valet01"]);
ds_list_add(items_kiosk01, ["uholek01", "towarysh01"]);
ds_list_add(items_kiosk01, ["valet01", "shwarc01"]);
ds_list_add(items_kiosk01, ["towarysh01", "pan_fedir01"]);
ds_list_add(items_kiosk01, ["shwarc01", "uholek01"]);


itemCount01 = ds_list_size(items_kiosk01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
