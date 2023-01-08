part_emitter_destroy(weather, emitter_rain);
raining = false;
timer_rain = true;
alarm[7] = rain_to_rain * 20;

percent_rain--;

audio_stop_sound(snd_rain);