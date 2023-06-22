/// @description snd Krus
// звук монетки за криса
audio_play_sound(snd_coins_buy,1,0,global.System_gain);
if(global.money > 0){
	global.money -= 0.1;
}