switch(obj_Battle_Interface.count)
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
