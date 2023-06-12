if(global.LANGUAGE == "ua") {obj_end.image_index = 0;}
else {obj_end.image_index = 1;}
window_set_cursor(cr_arrow);
var cam = camera_create_view(0,0, 1920, 1080);
view_set_camera(0, cam);
view_set_camera(1, cam);
//obj_dim_player1.visible = 0;
//obj_dim_player2.visible = 0;
//obj_dim_player1.x = -10000;
//obj_dim_player2.x = -10000;
//obj_inventory.visible = 0;
audio_stop_all();
layer_create(-999, "dark1");
seq_dark = layer_sequence_create("dark1", 0, 0, seq_afterFight);
global.gameStart = false;
instance_destroy(daycycle);
instance_destroy(obj_mp_manager);
instance_destroy(obj_diary);
instance_destroy(obj_inventory);
instance_destroy(obj_Battle_Interface);
instance_destroy(Settings);
instance_destroy(obj_dim_player1);
instance_destroy(obj_dim_player2);