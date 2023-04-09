//inst_6DB19E2B.visible = false;

if (!instance_exists(obj_tor_3)){
var randomizes = 0
switch (randomizes){
case 0:
//instance_create_depth(233,267,100,obj_tor_2);
instance_create_depth(210,293,100,obj_tor_3).sprite_index = spr_tor_1;
instance_create_depth(277,273,100,obj_tor_3).sprite_index = spr_tor_2;
instance_create_depth(233,267,100,obj_tor_3);
//instance_create_depth(277,273,100,obj_tor_3); 
break;
case 1:
instance_create_depth(1836,232,100,obj_tor_3).sprite_index = spr_tor_1;
instance_create_depth(1860,244,100,obj_tor_3).sprite_index = spr_tor_2;
instance_create_depth(1888,236,100,obj_tor_3);
//inst_6DB19E2B.visible = true;
break;
case 2:
break;
}
}

//якщо обькєт екзістенсе не створювати нових
//створити змінну живі_угроповання = 1, чи залежно який номер угруповання на локації,
//і якщо ми перемагаємо ставити як 0, і в цьом обькті його знищувати