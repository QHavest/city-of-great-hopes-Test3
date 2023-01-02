alarm[0] -= 1;
//alarm[1] -= 1;
if (alarm[0] < 1){
alarm[0] = random_range(200,250);
val1 = irandom_range(0,8);
//hrestx = 1570;
hresty = 577;

//instance_create_depth(strax,578,-300,obj_star)

hrest_enemy = ds_list_create();
ds_list_shuffle(hrest_enemy);

if (val1 = 0){ds_list_add(hrest_enemy, instance_create_depth(510,hresty,-300,obj_hrest));}
if (val1 = 1){ds_list_add(hrest_enemy, instance_create_depth(615,hresty,-300,obj_hrest));}
if (val1= 2){ds_list_add(hrest_enemy, instance_create_depth(720,hresty,-300,obj_hrest));}
if (val1 = 3){ds_list_add(hrest_enemy, instance_create_depth(825,hresty,-300,obj_hrest));}
if (val1 = 4){ds_list_add(hrest_enemy, instance_create_depth(930,hresty,-300,obj_hrest));}
if (val1 = 5){ds_list_add(hrest_enemy, instance_create_depth(1035,hresty,-300,obj_hrest));}
if (val1 = 6){ds_list_add(hrest_enemy, instance_create_depth(1140,hresty,-300,obj_hrest));}
if (val1 = 7){ds_list_add(hrest_enemy, instance_create_depth(1245,hresty,-300,obj_hrest));}
if (val1 = 8){ds_list_add(hrest_enemy, instance_create_depth(1350,hresty,-300,obj_hrest));}


}