switch (randomizes){
case 0://зліва скйлеки 
instance_create_depth(82,287,100,obj_kav_5).sprite_index = spr_kav_2;
instance_create_depth(105,284,100,obj_kav_5).sprite_index = spr_kav_4;
instance_create_depth(130,285,100,obj_kav_5);
instance_activate_object(inst_7E666161);//livo
obj_Battle_Interface.count_kavkaz = 2;
//inst_6DB19E2B.visible = true;
break;
case 1://centre
instance_create_depth(816,268,100,obj_kav_5).sprite_index = spr_kav_2;
instance_create_depth(829,249,100,obj_kav_5).sprite_index = spr_kav_4;
instance_create_depth(862,246,100,obj_kav_5);
instance_activate_object(inst_15ADF1C4);//centre
obj_Battle_Interface.count_kavkaz = 0;
break;
case 2://справа скйлеки
instance_create_depth(1624,286,100,obj_kav_5).sprite_index = spr_kav_2;
instance_create_depth(1651,281,100,obj_kav_5).sprite_index = spr_kav_4;
instance_create_depth(1684,282,100,obj_kav_5);
instance_activate_object(inst_73061F92);//sprava
obj_Battle_Interface.count_kavkaz = 1;
break;
}