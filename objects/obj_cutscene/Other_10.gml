current_scene = scene_info[scene];
var leng = array_length_1d(current_scene) -1;

current_scene_array = -1;
current_scene_array = array_create(leng,0)
array_copy(current_scene_array, 0, current_scene, 1, leng);




/*switch(leng){
	case 0: script_execute(current_scene[0]); break;
	case 1: script_execute(current_scene[0],current_scene[1]); break;
	case 2: script_execute(current_scene[0],current_scene[1],current_scene[2]); break;
}*/
