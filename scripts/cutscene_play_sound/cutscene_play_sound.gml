//@arg soundid
//@arg priority
//@arg loops
function cutscene_play_sound(){
 audio_play_sound(argument0,argument1,argument2);
 cutscene_end_action();
}