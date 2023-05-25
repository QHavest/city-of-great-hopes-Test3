switch (randomizes){
case 0://зліва скйлеки 
instance_activate_object(inst_7E666161);//livo
instance_deactivate_object(inst_73061F92);//sprava
instance_deactivate_object(inst_15ADF1C4);//centre
//inst_6DB19E2B.visible = true;
break;
case 1://centre
instance_activate_object(inst_15ADF1C4);//centre
instance_deactivate_object(inst_73061F92);//sprava
instance_deactivate_object(inst_7E666161);//livo
break;
case 2://справа скйлеки
instance_activate_object(inst_73061F92);//sprava
instance_deactivate_object(inst_15ADF1C4);//centre
instance_deactivate_object(inst_7E666161);//livo

break;
}