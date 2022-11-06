if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "camera1":
    //regularCam01 = view_get_camera(0);
    //regularCam02 = view_get_camera(1);
 
    //var cams1 = camera_create_view(1919, 150, 240, 120);
	
	//view_visible[0] = false;
	//camera_destroy(view_camera[0]);
	//view_visible[2] = true;
    //var cams1 = camera_create_view(1840, 90, 350, 200);
    //view_set_camera(0, cams1);
    //view_set_camera(1, cams1);
	
	obj_dim_player1.x = obj_player_1.x;
	obj_dim_player1.y = obj_player_1.y;
	
	obj_dim_player2.x = obj_player_2.x;
	obj_dim_player2.y = obj_player_2.y;
    break;

    case "camera2":
    //view_set_camera(0, regularCam01);
    //view_set_camera(1, regularCam02);
  
	//view_visible[2] = false;
	//camera_destroy(view_camera[2]);
	//view_visible[1] = true;
    break;
  
    case "dial_start":
	//pause = true;
    //obj_player_1.image_speed = 1;
    //obj_player_2.image_speed = 1;
    scr_create_textbox("scena_6");
  
    break;
  
    case "delete":
	global.shop = false;
    layer_sequence_destroy(seq1);
    break;
  }
}