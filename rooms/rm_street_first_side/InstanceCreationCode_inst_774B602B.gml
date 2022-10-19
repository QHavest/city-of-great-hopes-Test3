t_scene_info = [
	[cutscene_move_character, obj_dim_player1, 1416, 257, false, 1],
	//[cutscene_instance_create, 1416, 257, "Instances_obj", obj_explosion],
	[cutscene_instance_destroy, obj_dim_player1],
	
	[cutscene_wait, .5],
	
	//[cutscene_instance_create, 1416, 257, "Instances_obj", obj_explosion],
	[cutscene_instance_create, 1750, 245, "Instances_obj", obj_dim_player1],
	
	[cutscene_wait, .5],
	[cutscene_move_character,  obj_dim_player1, -16, 0, true, 1],
];