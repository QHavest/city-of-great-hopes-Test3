//global.sound = snd_rivalstation;
//audio_play_sound(global.sound,1,1);
global.player_gain = 1;
global.Fon_sound_gain = 1;
global.System_gain = 1;

old_sound = snd_main_menu;
new_sound = snd_main_menu;

//show_debug_message("I born!");
audio_play_sound(old_sound,8,global.Fon_sound_gain);