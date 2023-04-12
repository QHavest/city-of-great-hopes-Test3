
//inst_6DB19E2B.visible = false;
//clamp(count,0,1)
if (!instance_exists(obj_kav_5) and obj_Battle_Interface.lives_enemy_kavkaz = true){
alarm[0]=1;
switch(obj_Battle_Interface.count_kavkaz)
{
	case 0:
		randomizes = 0;
	break;
	case 1:
		randomizes = irandom(1);
	break;
	case 2:
		randomizes = irandom_range(1,2);
	break;
}

}

//якщо обькєт екзістенсе не створювати нових
//створити змінну живі_угроповання = 1, чи залежно який номер угруповання на локації,
//і якщо ми перемагаємо ставити як 0, і в цьом обькті його знищувати