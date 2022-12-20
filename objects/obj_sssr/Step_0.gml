
alarm[0] -= 1;
if (alarm[0] < 1){
alarm[0] = 60;
strax = irandom_range(1250,1350)
//instance_create_depth(strax,578,-300,obj_star)
sssr_enemy = ds_list_create();
ds_list_shuffle(sssr_enemy);
ds_list_add(sssr_enemy, instance_create_depth(strax,578,-300,obj_sssrs));
ds_list_add(sssr_enemy, instance_create_depth(strax,682,-300,obj_sssrs));
ds_list_add(sssr_enemy, instance_create_depth(strax,789,-300,obj_sssrs));
ds_list_add(sssr_enemy, instance_create_depth(strax,894,-300,obj_sssrs));
with (ds_list_find_value(sssr_enemy, irandom_range(0,3))){
	im = irandom_range(0,2);
}
}

