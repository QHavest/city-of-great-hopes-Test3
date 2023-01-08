if(num_fog == percent_fog) {exit;}

num_fog = irandom(percent_fog);

alarm_set(6, time_fog * 20);

//show_debug_message(num_fog);