
switch (randomizes){
case 0://центр біля входу в вокзал
//instance_create_depth(1836,232,100,obj_tor_3).sprite_index = spr_tor_1;
//instance_create_depth(1860,244,100,obj_tor_3).sprite_index = spr_tor_2;
//instance_create_depth(1888,239,100,obj_tor_3);
instance_create_depth(1808,264,100,obj_tor_3).sprite_index = spr_tor_1;
instance_create_depth(1837,258,100,obj_tor_3).sprite_index = spr_tor_2;
instance_create_depth(1916,260,100,obj_tor_3);
instance_activate_object(inst_4534AAD6);//centre
obj_Battle_Interface.count = 2;
//inst_6DB19E2B.visible = true;
break;
case 1://зліва скйлеки вокзалу
instance_create_depth(210,293,100,obj_tor_3).sprite_index = spr_tor_1;
instance_create_depth(277,273,100,obj_tor_3).sprite_index = spr_tor_2;
instance_create_depth(233,267,100,obj_tor_3);
instance_activate_object(inst_2973A851);//livo
obj_Battle_Interface.count = 0;
break;
case 2://справа скйлеки вокзалу
instance_create_depth(3364,266,100,obj_tor_3).sprite_index = spr_tor_1;
instance_create_depth(3453,250,100,obj_tor_3);
instance_create_depth(3385.661,253,100,obj_tor_3).sprite_index = spr_tor_2;
instance_activate_object(inst_68B14674);//sprava
obj_Battle_Interface.count = 1;
break;
}