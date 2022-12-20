
alarm[0] -= 1;
if (alarm[0] < 1){
alarm[0] = random_range(30,120);

val = irandom_range(0,3);
strax = 1570;
//instance_create_depth(strax,578,-300,obj_star)

sssr_enemy = ds_list_create();
ds_list_shuffle(sssr_enemy);

if (val = 0 or val = irandom_range(0,3)){ds_list_add(sssr_enemy, instance_create_depth(strax,578,-300,obj_sssrs));}
if (val = 1 or val = irandom_range(0,2)){ds_list_add(sssr_enemy, instance_create_depth(strax,682,-300,obj_sssrs));}
if (val = 2 or val = irandom_range(0,3)){ds_list_add(sssr_enemy, instance_create_depth(strax,789,-300,obj_sssrs));}
if (val = 3 or val = irandom_range(0,3)){ds_list_add(sssr_enemy, instance_create_depth(strax,894,-300,obj_sssrs));}
with (ds_list_find_value(sssr_enemy, irandom_range(0,3))){
	im = irandom_range(0,3);
}
}


