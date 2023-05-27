if (instance_exists(obj_spawn_enemy_fontan)){
switch (randomizes){
case 0://центр біля входу в вокзал

instance_activate_object(inst_4534AAD6);//centre
instance_deactivate_object(inst_2973A851);//livo
instance_deactivate_object(inst_68B14674);//centre

break;
case 1://зліва скйлеки вокзалу
instance_activate_object(inst_2973A851);//livo
instance_deactivate_object(inst_68B14674);//livo
instance_deactivate_object(inst_4534AAD6);//centre
break;
case 2://справа скйлеки вокзалу
instance_activate_object(inst_68B14674);//sprava
instance_deactivate_object(inst_2973A851);//livo
instance_deactivate_object(inst_4534AAD6);//centre
break;
}
}