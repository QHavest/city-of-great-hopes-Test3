//description cutscene_wait
//@args seconds
function cutscene_wait(argument0){
timer++;
if(timer >= argument0 * room_speed){
	timer=0;
	cutscene_end_action();
}
}