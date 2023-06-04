
//inst_6DB19E2B.visible = false;
//clamp(count,0,1)
show_debug_message("RM_START");
if (!instance_exists(obj_kav_5) and obj_Battle_Interface.lives_enemy_kavkaz = true){
	show_debug_message("if = true");
alarm[0]=1;
switch(obj_Battle_Interface.count_kavkaz)
{
	case 0:
	show_debug_message("rand1");
		randomizes = 0;
	break;
	case 1:
	show_debug_message("rand2");
		randomizes = irandom(1);
	break;
	case 2:
	show_debug_message("rand3");
		randomizes = irandom_range(1,2);
	break;
}
}

//якщо обькєт екзістенсе не створювати нових
//створити змінну живі_угроповання = 1, чи залежно який номер угруповання на локації,
//і якщо ми перемагаємо ставити як 0, і в цьом обькті його знищувати