if(global.LANGUAGE == "ua") {obj_end.image_index = 0;}
else {obj_end.image_index = 1;}
window_set_cursor(cr_arrow);
var cam = camera_create_view(0,0, 1920, 1080);
view_set_camera(0, cam);
view_set_camera(1, cam);
obj_dim_player1.visible = 0;
obj_dim_player1.visible = 0;
obj_dim_player1.x = -1000;
obj_dim_player2.visible = -1000;
obj_inventory.visible = 0;
audio_stop_all();
layer_create(-999, "dark1");
seq_dark = layer_sequence_create("dark1", 0, 0, seq_afterFight);