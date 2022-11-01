//@arg x
//@arg y
//@arg obj
function cutscene_instance_destroy_near(){
	var inst = instance_nearest(argument0,argument1,argument2);
	
	cutscene_instance_destroy(inst);
}