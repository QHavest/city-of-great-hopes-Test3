
shopOpen = false; // цеймагазин відкритий?
global.shop = false; // любий магазин відкритий?

selected = 0;

//items
items_bakery = ds_list_create();
ds_list_add(items_bakery, ["Батон", 0.25]);
ds_list_add(items_bakery, ["Булка з повидлом", 0.50]);
ds_list_add(items_bakery, ["Цукерочки", 0.30]);
ds_list_add(items_bakery, ["Кексики", 0.10]);
ds_list_add(items_bakery, ["Пончики", 0.20]);
ds_list_add(items_bakery, ["Сирна булка", 0.40]);
ds_list_add(items_bakery, ["Заварна булка", 0.35]);

itemCount = ds_list_size(items_bakery)

guiW = display_get_gui_width();
guiH = display_get_gui_height();

