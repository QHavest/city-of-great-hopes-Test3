
shopOpen = false; // цеймагазин відкритий?

selected = 0;
notselected = 0;

//items to buy
if(global.LANGUAGE = "ua"){
items_kiosk = ds_list_create();
ds_list_add(items_kiosk, ["uholek", 0.25, 24]);
ds_list_add(items_kiosk, ["valet", 0.50, 25]);
ds_list_add(items_kiosk, ["towarysh", 0.30, 26]);
ds_list_add(items_kiosk, ["shwarc", 0.10, 27]);
ds_list_add(items_kiosk, ["pan_fedir", 0.20, 28]);

//items to the right and left
items_kiosk01 = ds_list_create();
ds_list_add(items_kiosk01, ["pan_fedir01","valet01"]);
ds_list_add(items_kiosk01, ["uholek01", "towarysh01"]);
ds_list_add(items_kiosk01, ["valet01", "shwarc01"]);
ds_list_add(items_kiosk01, ["towarysh01", "pan_fedir01"]);
ds_list_add(items_kiosk01, ["shwarc01", "uholek01"]);
}
if(global.LANGUAGE = "eng"){
items_kiosk = ds_list_create();
ds_list_add(items_kiosk, ["uholek_eng", 0.25, 24]);
ds_list_add(items_kiosk, ["valet_eng", 0.50, 25]);
ds_list_add(items_kiosk, ["towarysh_eng", 0.30, 26]);
ds_list_add(items_kiosk, ["shwarc_eng", 0.10, 27]);
ds_list_add(items_kiosk, ["pan_fedir_eng", 0.20, 28]);

//items to the right and left
items_kiosk01 = ds_list_create();
ds_list_add(items_kiosk01, ["pan_fedir_eng01","valet_eng01"]);
ds_list_add(items_kiosk01, ["uholek_eng01", "towarysh_eng01"]);
ds_list_add(items_kiosk01, ["valet_eng01", "shwarc_eng01"]);
ds_list_add(items_kiosk01, ["towarysh_eng01", "pan_fedir_eng01"]);
ds_list_add(items_kiosk01, ["shwarc_eng01", "uholek_eng01"]);
}


itemCount = ds_list_size(items_kiosk)
itemCount01 = ds_list_size(items_kiosk01)

guiW = display_get_gui_width();
guiH = display_get_gui_height();
