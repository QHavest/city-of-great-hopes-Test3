///@param text_id	
hit_cher=0; // чи били ми черку?
function scr_game_text(_text_id){
	switch (_text_id)
	{
// вокзал		
// text test
#region (Cherka)
case "Cherka":
	scr_text(scr_json_lang(global.LANGUAGE,"Cherka0"),2,spr_ic_Krus,spr_ic_cher);
	scr_text(scr_json_lang(global.LANGUAGE,"Cherka1"),1,spr_ic_Krus,spr_ic_cher);
	scr_text(scr_json_lang(global.LANGUAGE,"Cherka2"),2,spr_ic_Krus,spr_ic_cher);
		scr_option(scr_json_lang(global.LANGUAGE,"Cherka3"),"give_money_cher");
		scr_option(scr_json_lang(global.LANGUAGE,"Cherka4"),"move_sholder_cher");
		scr_option(scr_json_lang(global.LANGUAGE,"Cherka5"),"hit_cher1");
break
		case "give_money_cher":
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka6"),2,spr_ic_Krus,spr_ic_cher);
		
		case "move_sholder_cher":
		// якщо перший раз
		if global.cher_quest = 0
		{
			global.cher_quest = 1;
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka7"),2,spr_ic_Krus,spr_ic_cher);
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka8"),1,spr_ic_Krus,spr_ic_cher);	
			if (hit_cher=0 and global.certificate >0) 
			{
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka9"),2,spr_ic_Krus,spr_ic_cher);
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka10"),1,spr_ic_Krus,spr_ic_cher);
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka11"),2,spr_ic_Krus,spr_ic_cher);

			scr_option(scr_json_lang(global.LANGUAGE,"Cherka12"),"yes_siga_cher");
			scr_option(scr_json_lang(global.LANGUAGE,"Cherka16"),"no_siga_cher");
			scr_option(scr_json_lang(global.LANGUAGE,"Cherka5"),"hit_cher2");
			}
			break
		}
		else 
		{
			//анімаці як Черка просто підносить пляшку біля себе й пропонує її протагоністам.
		}
			case "yes_siga_cher":
			
			// if siga>=300 and 
			scr_text(scr_json_lang(global.LANGUAGE,"Cherka13"),2,spr_ic_Krus,spr_ic_cher);
			// -300 сигарет Біля Черки зявляється зв’язка сигарет.
			scr_text(scr_json_lang(global.LANGUAGE,"Cherka14"),2,spr_ic_Krus,spr_ic_cher);
			
			// +11 сертифікатів Черки Григоровича.
			scr_text(scr_json_lang(global.LANGUAGE,"Cherka15"),2,spr_ic_Krus,spr_ic_cher);
			break
		
			case "no_siga_cher":
			scr_text(scr_json_lang(global.LANGUAGE,"Cherka17"),1,spr_ic_Krus,spr_ic_cher);
			scr_text(scr_json_lang(global.LANGUAGE,"Cherka18"),2,spr_ic_Krus,spr_ic_cher);
			break
		
		case "hit_cher2":
		hit_cher =1;
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka20"),1,spr_ic_cher,spr_ic_Security);
		// Мусор ком ін
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka21"),2,spr_ic_Ytopurok,spr_ic_Security);
			scr_option(scr_json_lang(global.LANGUAGE,"Cherka22"),"fight_cher");
			scr_option(scr_json_lang(global.LANGUAGE,"Cherka24"),"4");
		break
		
		case "hit_cher1":
		hit_cher =1;
		// Мусор ком ін
		
		//скрипт випадковості
		switch(irandom_range(1,3)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka25"),2,spr_ic_Ytopurok,spr_ic_Security);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka26"),2,spr_ic_Ytopurok,spr_ic_Security);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka27"),2,spr_ic_Ytopurok,spr_ic_Security);
			break
				scr_option(scr_json_lang(global.LANGUAGE,"Cherka29"),"4");
				scr_option(scr_json_lang(global.LANGUAGE,"Cherka30"),"hit_cher3");
			break
			
			case "hit_cher3":
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka28"),2,spr_ic_Ytopurok,spr_ic_Security);
			scr_option(scr_json_lang(global.LANGUAGE,"Cherka22"),"fight_cher");
			scr_option(scr_json_lang(global.LANGUAGE,"Cherka29"),"sorry_cher");
			
		break
		}
		case "fight_cher":
		scr_text(scr_json_lang(global.LANGUAGE,"Cherka23"),2,spr_ic_Ytopurok,spr_ic_Security);
		// починається бійка
		break
		

		case "sorry_cher":
			scr_text(scr_json_lang(global.LANGUAGE,"Cherka32"),2,spr_ic_Ytopurok,spr_ic_Security);

		break
#endregion
#region (Kasa)
case "Kasa":
	scr_text(scr_json_lang(global.LANGUAGE,"Kasa0"),2,spr_ic_Krus,spr_ic_kasa);
	scr_text(scr_json_lang(global.LANGUAGE,"Kasa1"),1,spr_ic_Krus,spr_ic_kasa);
	scr_text(scr_json_lang(global.LANGUAGE,"Kasa2"),2,spr_ic_Krus,spr_ic_kasa);
	scr_text(scr_json_lang(global.LANGUAGE,"Kasa3"),2,spr_ic_Krus,spr_ic_kasa);
	scr_text(scr_json_lang(global.LANGUAGE,"Kasa4"),2,spr_ic_Krus,spr_ic_kasa);
	scr_text(scr_json_lang(global.LANGUAGE,"Kasa5"),2,spr_ic_Krus,spr_ic_kasa);
		scr_option(scr_json_lang(global.LANGUAGE,"Kasa6"),"bying_tiket");
		scr_option(scr_json_lang(global.LANGUAGE,"Kasa7"),"4");
		
break
			case "bying_tiket":
			//scr_text("BY_IT");
	// скрипт покупокупок
			break
	#endregion
#region (Lotereia)
case "Lotereia":
	scr_text(scr_json_lang(global.LANGUAGE,"Loto0"),2,spr_ic_Krus,spr_ic_Loto);
		scr_option(scr_json_lang(global.LANGUAGE,"Loto1"),"Yes_loto");
		scr_option(scr_json_lang(global.LANGUAGE,"Loto2"),"4");
break	
		case "Yes_loto":
		// скрипт покупки лотерейних квитків
		break
#endregion
#region (Vasia) 
case "Vasia":
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia1"),2,spr_ic_Ytopurok,spr_ic_afroYvasia_na);
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia2"),1,spr_ic_Ytopurok,spr_ic_afroYvasia_na);
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia3"),2,spr_ic_Ytopurok,spr_ic_afroYvasia_na);
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia4"),2,spr_ic_Ytopurok,spr_ic_afroYvasia_na);
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia5"),1,spr_ic_Ytopurok,spr_ic_afroYvasia_na);
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia6"),2,spr_ic_Ytopurok,spr_ic_afroYvasia_na);
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia7"),1,spr_ic_Ytopurok,spr_ic_afroYvasia_na);
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia8"),2,spr_ic_Ytopurok,spr_ic_afroYvasia_na);
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia9"),1,spr_ic_Ytopurok,spr_ic_afroYvasia_na);
	scr_text(scr_json_lang(global.LANGUAGE,"Vasia10"),2,spr_ic_Ytopurok,spr_ic_afroYvasia_na);

break
#endregion
#region (Gogi)
case "Gogi":
if global.zn_Gog = 0
{
	scr_text(scr_json_lang(global.LANGUAGE,"Gog1"),2,spr_ic_Krus,spr_ic_Gogi);
	global.zn_Gog = 1
		scr_option(scr_json_lang(global.LANGUAGE,"Gog3"),"speak_gog");
		scr_option(scr_json_lang(global.LANGUAGE,"Gog4"),"by_beckery");
}
else{
	scr_text(scr_json_lang(global.LANGUAGE,"Gog2"),2,spr_ic_Ytopurok,spr_ic_Gogi);
	scr_option(scr_json_lang(global.LANGUAGE,"Gog5"),"speak_gog");
	scr_option(scr_json_lang(global.LANGUAGE,"Gog6"),"speak_gog");
}
break		
	case "speak_gog":	
// рандом 
switch(irandom_range(1,5)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Gog7"),2,spr_ic_Krus,spr_ic_Gogi);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Gog8"),2,spr_ic_Krus,spr_ic_Gogi);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Gog9"),2,spr_ic_Krus,spr_ic_Gogi);
			break
			case 4:
			scr_text(scr_json_lang(global.LANGUAGE,"Gog10"),2,spr_ic_Krus,spr_ic_Gogi);
			break
			case 5:
			scr_text(scr_json_lang(global.LANGUAGE,"Gog11"),2,spr_ic_Krus,spr_ic_Gogi);
			break
}	
	scr_text(scr_json_lang(global.LANGUAGE,"Gog12"),2,spr_ic_Krus,spr_ic_Gogi);
	// іф пройшли пройшли певно кількість гри
	//	scr_text("Так. Живемо приспівуючи, правда не знаєш що буде завтра постійно", "player");
	//	scr_text("Ну це да.","non_player");
	//ельзе
		scr_text(scr_json_lang(global.LANGUAGE,"Gog13"),1,spr_ic_Krus,spr_ic_Gogi);
		scr_text(scr_json_lang(global.LANGUAGE,"Gog14"),2,spr_ic_Krus,spr_ic_Gogi);
break
case"by_beckery":
// ЗАПУСК МАГАЗА
instance_create_depth(obj_dim_player1.x,90,-9999,obj_bakery)
obj_bakery.shopOpen = true;
global.shop = true;
	break
	
#endregion
#region (Yana)
case "Yana":
	scr_text(scr_json_lang(global.LANGUAGE,"Yana0"),2,spr_ic_Krus,spr_ic_Yana);
	if global.zn_Yana = false
{	global.zn_Yana = true
	scr_text(scr_json_lang(global.LANGUAGE,"Yana1"),2,spr_ic_Krus,spr_ic_Yana);
	scr_text(scr_json_lang(global.LANGUAGE,"Yana2"),2,spr_ic_Krus,spr_ic_Yana);
	//scr_text("тому ознайомтесь й не баріться з закупівлею.",2,spr_ic_Krus,spr_ic_Yana);
}	
		scr_option(scr_json_lang(global.LANGUAGE,"Yana3"), "bying_Yana");
		scr_option(scr_json_lang(global.LANGUAGE,"Yana4"), "4");
	break
		case "bying_Yana":
		instance_create_depth(obj_dim_player1.x,90,-9999,obj_tryKalynky)
obj_tryKalynky.shopOpen = true;
global.shop = true;
	// скрипт покупокупок
		break
	
	case "Security1":
		scr_text(scr_json_lang(global.LANGUAGE,"Security1"),2,spr_ic_Krus,spr_ic_Security);
	break
	case "Security2":
		scr_text(scr_json_lang(global.LANGUAGE,"Security2"),2,spr_ic_Krus,spr_ic_Security);
	break
	case "Security3":
		scr_text(scr_json_lang(global.LANGUAGE,"Security3"),2,spr_ic_Krus,spr_ic_Security);
	break
#endregion
#region (Boss)
case "Boss":

	scr_text(scr_json_lang(global.LANGUAGE,"Boss1"),2,spr_ic_Krus,spr_ic_boss);
		scr_option(scr_json_lang(global.LANGUAGE,"Boss2"),"1_yes_kal")
		scr_option(scr_json_lang(global.LANGUAGE,"Boss3"),"4")
	break
		case "1_yes_kal":
	scr_text (scr_json_lang(global.LANGUAGE,"Boss4"),2,spr_ic_Krus,spr_ic_boss);
	scr_text (scr_json_lang(global.LANGUAGE,"Boss5"),2,spr_ic_Krus,spr_ic_boss);
	scr_text (scr_json_lang(global.LANGUAGE,"Boss6"),2,spr_ic_Krus,spr_ic_boss);
	scr_text (scr_json_lang(global.LANGUAGE,"Boss7"),2,spr_ic_Krus,spr_ic_boss);
	scr_text (scr_json_lang(global.LANGUAGE,"Boss8"),2,spr_ic_Krus,spr_ic_boss);
	scr_text (scr_json_lang(global.LANGUAGE,"Boss9"),2,spr_ic_Krus,spr_ic_boss);
	scr_text (scr_json_lang(global.LANGUAGE,"Boss10"),2,spr_ic_Krus,spr_ic_boss);
	
		scr_option(scr_json_lang(global.LANGUAGE,"Boss11"),"2_yes_kal");
		scr_option(scr_json_lang(global.LANGUAGE,"Boss12"),"4");
		break;
	case "2_yes_kal":
	scr_text (scr_json_lang(global.LANGUAGE,"Boss13"),2,spr_ic_Krus,spr_ic_boss);
	scr_text (scr_json_lang(global.LANGUAGE,"Boss14"),2,spr_ic_Krus,spr_ic_boss);
	scr_text (scr_json_lang(global.LANGUAGE,"Boss15"),2,spr_ic_Krus,spr_ic_boss);
	break;
#endregion
#region (Souvenir)
case "Souvenir":
	scr_text (scr_json_lang(global.LANGUAGE,"sovenir1"),2,spr_ic_Krus,spr_ic_souvenir);
	scr_text (scr_json_lang(global.LANGUAGE,"sovenir2"),1,spr_ic_Krus,spr_ic_souvenir);
	scr_text (scr_json_lang(global.LANGUAGE,"sovenir3"),2,spr_ic_Krus,spr_ic_souvenir);
		scr_option(scr_json_lang(global.LANGUAGE,"sovenir4"),"by_souvenir")
		scr_option(scr_json_lang(global.LANGUAGE,"sovenir5"),"4")
		
		case "by_souvenir":
		instance_create_depth(obj_dim_player1.x,90,-9999,obj_suvenirnyi)
obj_suvenirnyi.shopOpen = true;
global.shop = true;
		break
break
#endregion
#region (Black_bazar_X)
//if ponedilok = false
/*case "Black_bazar_X":
	scr_text("Слава свободному риночку. Бачу ще пара людисьок, хоче чогось екстравагантного. Надіюсь ви мене розважите.","non_player")
	//	scr_option("Переглянути асортимент","by_misterX");
	//	scr_option("Відмовитись","goodby");
break
		case "goodby":
		scr_text("Вот ви скучні. Ну ідіть куди маєте тоді.","non_player")
		break
		case "by_mistrX5":
// Меню ПОКУПОК
		break
//break*/
//if ponedilok = TRUE
case "Black_bazar_X":
	scr_text("Чого ви донімаєте вільну людину? Може хочете придбать календарик?","non_player")
	scr_text("Та нє навєрно, а шо?","player")
	scr_text("Та того шо в мене вихідний й я манав щось продавать й взагалі працювать. Ну хіба ви доплатите.","non_player")
		scr_option("Переглянути асортимент","by_misterX");
		scr_option("Відмовитись","goodby");
break	
		case "goodby":
		scr_text("Ну тоді не заважайте, я дивлюсь на поїзда.","non_player")
		break
		
		case "by_mistrX":
// Меню ПОКУПОК +25% до всіх цін
		break
case "end_bying_pon_X":
	scr_text("Слава свободному риночку!","non_player")
break
#endregion
#region (Gopota)
//рандом
case "Gopota":
switch(irandom_range(1,4)){
	case 1: dop="1";
	break
	case 2: dop="2";
	break
	case 3: dop="3";
	break
	case 4: dop="4";
	break
}

text_id = _text_id+dop;
scr_create_textbox(text_id)
break
case "Gopota1":
//рандом
		scr_text (scr_json_lang(global.LANGUAGE,"Gopota1"),2,spr_ic_Krus,spr_ic_gopnik_1);
			scr_option(scr_json_lang(global.LANGUAGE,"Gopota2"),"all_money");
			scr_option(scr_json_lang(global.LANGUAGE,"Gopota3"),"5_cent");
			scr_option(scr_json_lang(global.LANGUAGE,"Gopota4"),"fight");
break
	case "all_money":
	//Гопніки будуть регулярно доставати Утопирка та Криса й вибивать з них гроші
	break
	case "5_cent":
	//Не змінює періодичність їх появи
	break
	case "fight":
	//Почнеться бійка Утопирка та Криса проти трьох гопніків. Якщо програти, то вони заберуть всі гроші
	break
case "Gopota2":
	scr_text (scr_json_lang(global.LANGUAGE,"Gopota5"),2,spr_ic_Krus,spr_ic_gopnik_1);
break
case "Gopota3":
	scr_text (scr_json_lang(global.LANGUAGE,"Gopota6"),2,spr_ic_Krus,spr_ic_gopnik_1);
break
case "Gopota4":
scr_text (scr_json_lang(global.LANGUAGE,"Gopota7"),2,spr_ic_Ytopurok,spr_ic_gopnik_1);
		scr_option(scr_json_lang(global.LANGUAGE,"Gopota8"),"give_one_siga");
		scr_option(scr_json_lang(global.LANGUAGE,"Gopota9"),"idi_naxyi");
break
		case "give_one_siga":
		// - 1 siga
		break
		
		case "idi_naxyi":
		
scr_text (scr_json_lang(global.LANGUAGE,"Gopota10"),2,spr_ic_Ytopurok,spr_ic_gopnik_1);
				scr_option(scr_json_lang(global.LANGUAGE,"Gopota11"),"give_one_penny");
				scr_option(scr_json_lang(global.LANGUAGE,"Gopota12"),"idi_naxyi2");
		break
				case "idi_naxyi2":
				
			scr_text (scr_json_lang(global.LANGUAGE,"Gopota13"),2,spr_ic_Ytopurok,spr_ic_gopnik_1);
				scr_option(scr_json_lang(global.LANGUAGE,"Gopota14"),"all_money");
				scr_option(scr_json_lang(global.LANGUAGE,"Gopota15"),"fight");
				break
				
case "Gopota_pobeda":
scr_text (scr_json_lang(global.LANGUAGE,"Gopota16"),2,spr_ic_Ytopurok,spr_ic_gopnik_1);
// так і скажуть напів живі гопніки?
break
#endregion
#region (Ninel)
case ("Ninel"):
	scr_text(scr_json_lang(global.LANGUAGE,"Ninel1"),2,spr_ic_Krus,spr_ic_Ninel)
	if global.zn_Nin = 0 
	{ 
		global.zn_Nin = 1;
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel2"),1,spr_ic_Krus,spr_ic_Ninel)
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel3"),1,spr_ic_Ytopurok,spr_ic_Ninel)
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel4"),2,spr_ic_Ytopurok,spr_ic_Ninel)
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel5"),1,spr_ic_Ytopurok,spr_ic_Ninel)
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel6"),2,spr_ic_Ytopurok,spr_ic_Ninel)
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel7"),1,spr_ic_Ytopurok,spr_ic_Ninel)
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel8"),2,spr_ic_Ytopurok,spr_ic_Ninel)
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel9"),1,spr_ic_Krus,spr_ic_Ninel)
	}
	else 
	{
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel10"),1,spr_ic_Ytopurok,spr_ic_Ninel)
		scr_text(scr_json_lang(global.LANGUAGE,"Ninel11"),2,spr_ic_Krus,spr_ic_Ninel)
			scr_option(scr_json_lang(global.LANGUAGE,"Ninel12"),"ninel_maga")
			scr_option(scr_json_lang(global.LANGUAGE,"Ninel13"),"4")
	}
	
break
	case("ninel_maga"):
	instance_create_depth(obj_dim_player1.x,90,-9999,obj_food_shop)
obj_food_shop.shopOpen = true;
global.shop = true;
// magazine
	break
	
#endregion

// центр
#region (Alladin_Step)
case "Alladin_Step":
	scr_text(scr_json_lang(global.LANGUAGE,"Aladin1"),2,spr_ic_Krus,spr_ic_Aladin);
	scr_option(scr_json_lang(global.LANGUAGE,"Aladin2"),"name_aladin");
	// якщо пройшли тисяча та одну ніч (ТТОН)
	scr_option(scr_json_lang(global.LANGUAGE,"Aladin3"),"bonys_aladin");
	// якщо пройшли ТТОН та граєм білше 4-ох днів
	scr_option(scr_json_lang(global.LANGUAGE,"Aladin4"),"question_aladin");
	scr_option(scr_json_lang(global.LANGUAGE,"Aladin5"),"end_alladin");
	scr_option(scr_json_lang(global.LANGUAGE,"Aladin5"),"end_alladin1");
break
	case "name_aladin":
	scr_text(scr_json_lang(global.LANGUAGE,"Aladin6"),1,spr_ic_Krus,spr_ic_Aladin);
	
	break
	case "bonys_aladin":
	scr_text(scr_json_lang(global.LANGUAGE,"Aladin7"),1,spr_ic_Krus,spr_ic_Aladin);
	scr_text(scr_json_lang(global.LANGUAGE,"Aladin8"),2,spr_ic_Krus,spr_ic_Aladin);
		scr_option(scr_json_lang(global.LANGUAGE,"Aladin9"),"thank_aladin");
		scr_option(scr_json_lang(global.LANGUAGE,"Aladin10"),"free_tiket");
	break
	
		case "thank_aladin":
			scr_text(scr_json_lang(global.LANGUAGE,"Aladin11"),1,spr_ic_Krus,spr_ic_Aladin);
		break
		case "free_tiket":
// скрипт активації безплатного входу та (-1 відношення Алладіна Степановича)
		break
	case "question_aladin":
		scr_text(scr_json_lang(global.LANGUAGE,"Aladin12"),1,spr_ic_Krus,spr_ic_Aladin);
		scr_text(scr_json_lang(global.LANGUAGE,"Aladin13"),2,spr_ic_Krus,spr_ic_Aladin);
		scr_text(scr_json_lang(global.LANGUAGE,"Aladin14"),1,spr_ic_Krus,spr_ic_Aladin);
		scr_text(scr_json_lang(global.LANGUAGE,"Aladin141"),1,spr_ic_Krus,spr_ic_Aladin);
		scr_text(scr_json_lang(global.LANGUAGE,"Aladin15"),2,spr_ic_Krus,spr_ic_Aladin);
		scr_text(scr_json_lang(global.LANGUAGE,"Aladin151"),2,spr_ic_Krus,spr_ic_Aladin);
	break
	
	case "end_alladin":
		scr_text(scr_json_lang(global.LANGUAGE,"Aladin16"),1,spr_ic_Krus,spr_ic_Aladin);
	break
#endregion
#region (Docha_alladina)
case "Docha_alladina":
scr_text (scr_json_lang(global.LANGUAGE,"docha_Alad1"),2,spr_ic_Krus,spr_ic_docha_alada);
	scr_option(scr_json_lang(global.LANGUAGE,"docha_Alad2"),"film1");
	scr_option(scr_json_lang(global.LANGUAGE,"docha_Alad3"),"film1");
	scr_option(scr_json_lang(global.LANGUAGE,"docha_Alad4"),"film1");
	scr_option(scr_json_lang(global.LANGUAGE,"docha_Alad5"),"no_film");
break
case "no_film":
scr_text (scr_json_lang(global.LANGUAGE,"docha_Alad6"),2,spr_ic_Krus,spr_ic_docha_alada);
break
case "film1":
scr_text (scr_json_lang(global.LANGUAGE,"docha_Alad7"),2,spr_ic_Krus,spr_ic_docha_alada);
break
#endregion
#region		(Byfet)
case"Byfet":
scr_text (scr_json_lang(global.LANGUAGE,"Bufet1"),2,spr_ic_Krus,spr_ic_bufet);
				scr_option(scr_json_lang(global.LANGUAGE,"Bufet2"),"by_in_byfet");
				scr_option(scr_json_lang(global.LANGUAGE,"Bufet3"),"4");
break
case "by_in_byfet":
//відкриття бувфеу
break
#endregion
#region(Tarantino)
case "Tarantino":
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino1"),2,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino2"),1,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino3"),2,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino4"),2,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino41"),2,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino5"),1,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino6"),2,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino7"),1,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino8"),2,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino9"),1,spr_ic_Krus,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino10"),2,spr_ic_Krus,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino11"),1,spr_ic_Ytopurok,spr_ic_Tarantino);
scr_text (scr_json_lang(global.LANGUAGE,"Taranrino12"),2,spr_ic_Ytopurok,spr_ic_Tarantino);
	break		
#endregion
// тут я не хотів розбиратись тому спрайти співрозмовників хтось попідставляє 
// і це буду я тільки майбутній я кращий за теперішнього
#region (Mascot)
case"Mascot":
scr_text (scr_json_lang(global.LANGUAGE,"Mascot1"),2,spr_ic_Krus,spr_ic_Mascot);
scr_text (scr_json_lang(global.LANGUAGE,"Mascot2"),1,spr_ic_Krus,spr_ic_Mascot);
scr_text (scr_json_lang(global.LANGUAGE,"Mascot3"),2,spr_ic_Krus,spr_ic_Mascot);
scr_text (scr_json_lang(global.LANGUAGE,"Mascot4"),1,spr_ic_Krus,spr_ic_Mascot);
break
#endregion
#region(Stalova_kasa)
case"Stalova_kasa":
scr_text (scr_json_lang(global.LANGUAGE,"Stalova_kasa1"),2,spr_ic_Krus,spr_ic_Stolova_kasa);
scr_text (scr_json_lang(global.LANGUAGE,"Stalova_kasa2"),2,spr_ic_Krus,spr_ic_Stolova_kasa);
				scr_option(scr_json_lang(global.LANGUAGE,"Stalova_kasa3"),"by_in_center_byfet");
				scr_option(scr_json_lang(global.LANGUAGE,"Stalova_kasa4"),"4");
break
case "by_in_center_byfet":
instance_create_depth(obj_dim_player1.x,90,-9999,obj_stolovka)
obj_stolovka.shopOpen = true;
global.shop = true;//відкриття бувфеу
break
#endregion
#region(Kylt_kasa)
case"Kylt_kasa":
scr_text (scr_json_lang(global.LANGUAGE,"Kylt_kasa1"),2,spr_ic_Krus,spr_ic_Kelt_kasa);
scr_text (scr_json_lang(global.LANGUAGE,"Kylt_kasa2"),1,spr_ic_Krus,spr_ic_Kelt_kasa);
scr_text (scr_json_lang(global.LANGUAGE,"Kylt_kasa3"),2,spr_ic_Krus,spr_ic_Kelt_kasa);
scr_text (scr_json_lang(global.LANGUAGE,"Kylt_kasa4"),1,spr_ic_Krus,spr_ic_Kelt_kasa);
scr_text (scr_json_lang(global.LANGUAGE,"Kylt_kasa5"),2,spr_ic_Krus,spr_ic_Kelt_kasa);
scr_text (scr_json_lang(global.LANGUAGE,"Kylt_kasa6"),2,spr_ic_Krus,spr_ic_Ytopurok);
break
#endregion
#region(Garderob)
case"Garderob":
scr_text (scr_json_lang(global.LANGUAGE,"Garderob1"),2,spr_ic_Krus,spr_ic_Garderob);
				scr_option(scr_json_lang(global.LANGUAGE,"Garderob2"),"Zdat_gard");
				scr_option(scr_json_lang(global.LANGUAGE,"Garderob4"),"Vziat_gard");
				scr_option(scr_json_lang(global.LANGUAGE,"Garderob6"),"Povernyt_gard");
break

	case "Zdat_gard":
	scr_text (scr_json_lang(global.LANGUAGE,"Garderob3"),2,spr_ic_Krus,spr_ic_Garderob);
	break
	case "Vziat_gard":
	scr_text (scr_json_lang(global.LANGUAGE,"Garderob5"),2,spr_ic_Krus,spr_ic_Garderob);
	break
	case "Povernyt_gard":
	scr_text (scr_json_lang(global.LANGUAGE,"Garderob7"),2,spr_ic_Krus,spr_ic_Garderob);
	scr_text (scr_json_lang(global.LANGUAGE,"Garderob8"),2,spr_ic_Krus,spr_ic_Garderob);
	break
#endregion
#region(Patrulnui)
case"Patrulnui":
switch(irandom_range(1,3)){
			case 1:
		var patr_prod = scr_json_lang(global.LANGUAGE,"Patrulnui2");
			break
			case 2:
		var patr_prod = scr_json_lang(global.LANGUAGE,"Patrulnui3");
			break
			case 3:
		var patr_prod = scr_json_lang(global.LANGUAGE,"Patrulnui4");
			break
}	
scr_text (scr_json_lang(global.LANGUAGE,"Patrulnui1")+patr_prod,2,spr_ic_Krus,spr_ic_Patrulnui);
break
#endregion
#region(Naglyadach)
case"Naglyadach":
switch(irandom_range(1,5)){
			case 1:
			scr_text (scr_json_lang(global.LANGUAGE,"Naglyadach1"),2,spr_ic_Krus,spr_ic_Naglyadach);
			break
			case 2:
			scr_text (scr_json_lang(global.LANGUAGE,"Naglyadach2"),2,spr_ic_Krus,spr_ic_Naglyadach);
			break
			case 3:
			scr_text (scr_json_lang(global.LANGUAGE,"Naglyadach3"),2,spr_ic_Krus,spr_ic_Naglyadach);
			scr_text (scr_json_lang(global.LANGUAGE,"Naglyadach31"),2,spr_ic_Krus,spr_ic_Naglyadach);
			break
			case 4:
			scr_text (scr_json_lang(global.LANGUAGE,"Naglyadach4"),2,spr_ic_Krus,spr_ic_Naglyadach);
			scr_text (scr_json_lang(global.LANGUAGE,"Naglyadach41"),2,spr_ic_Krus,spr_ic_Naglyadach);
			break
			case 5:
			scr_text (scr_json_lang(global.LANGUAGE,"Naglyadach5"),2,spr_ic_Krus,spr_ic_Naglyadach);
			scr_text (scr_json_lang(global.LANGUAGE,"Naglyadach51"),2,spr_ic_Krus,spr_ic_Naglyadach);
			break
}	
break
case"Dilnuchui":
scr_text (scr_json_lang(global.LANGUAGE,"Dilnuchui1"),2,spr_ic_Krus,spr_ic_Dilnuchui);
break
#endregion

// Bazarrrrr
#region(Anton)
case"Anton":
	scr_text (scr_json_lang(global.LANGUAGE,"Anton1"),2,spr_ic_Krus,spr_ic_Anton);
	scr_text (scr_json_lang(global.LANGUAGE,"Anton2"),1,spr_ic_stiopa_tyshonka,spr_ic_Anton);
	scr_text (scr_json_lang(global.LANGUAGE,"Anton3"),2,spr_ic_Krus,spr_ic_Anton);
		scr_option(scr_json_lang(global.LANGUAGE,"Anton4"),"by_Anton");
		scr_option(scr_json_lang(global.LANGUAGE,"Anton5"),"svara");
		scr_option(scr_json_lang(global.LANGUAGE,"Anton13"),"Ruba?");
		scr_option(scr_json_lang(global.LANGUAGE,"Anton21"),"4");
				
		case"by_Anton":
		//магазин покупки м'яса
		break
		case"svara":
			scr_text (scr_json_lang(global.LANGUAGE,"Anton6"),2,spr_ic_Krus,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton7"),1,spr_ic_Krus,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton8"),2,spr_ic_Krus,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton9"),1,spr_ic_stiopa_tyshonka,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton10"),2,spr_ic_Krus,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton11"),2,spr_ic_Krus,spr_ic_stiopa_tyshonka);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton12"),1,spr_ic_Anton,spr_ic_stiopa_tyshonka);
									
		break
		case"Ruba?":
			scr_text (scr_json_lang(global.LANGUAGE,"Anton14"),2,spr_ic_Krus,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton15"),1,spr_ic_stiopa_tyshonka,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton16"),2,spr_ic_stiopa_tyshonka,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton17"),2,spr_ic_stiopa_tyshonka,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton18"),1,spr_ic_stiopa_tyshonka,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton19"),2,spr_ic_Krus,spr_ic_Anton);
			scr_text (scr_json_lang(global.LANGUAGE,"Anton20"),1,spr_ic_stiopa_tyshonka,spr_ic_Anton);
		break		
#endregion
#region (Barugi)
case "Barugi":
switch(irandom_range(1,6)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Barugi1"),2,spr_ic_Krus,spr_ic_Barugi);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Barugi2"),2,spr_ic_Krus,spr_ic_Barugi);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Barugi3"),2,spr_ic_Krus,spr_ic_Barugi);
			break
			case 4:
			scr_text(scr_json_lang(global.LANGUAGE,"Barugi4"),2,spr_ic_Krus,spr_ic_Barugi);
			break
			case 5:
			scr_text(scr_json_lang(global.LANGUAGE,"Barugi5"),2,spr_ic_Krus,spr_ic_Barugi);
			break
			case 6:
			scr_text(scr_json_lang(global.LANGUAGE,"Barugi6"),2,spr_ic_Krus,spr_ic_Barugi);
			break
}	
break
#endregion
#region (Zooseller)
case"Zooseller":
switch(irandom_range(1,4)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Zooseller1"),2,spr_ic_Krus,spr_ic_Zoo_seller);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Zooseller2"),2,spr_ic_Krus,spr_ic_Zoo_seller);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Zooseller3"),2,spr_ic_Krus,spr_ic_Zoo_seller);
			break
			case 4:
			scr_text(scr_json_lang(global.LANGUAGE,"Zooseller4"),2,spr_ic_Krus,spr_ic_Zoo_seller);
			scr_text(scr_json_lang(global.LANGUAGE,"Zooseller5"),2,spr_ic_Krus,spr_ic_Zoo_seller);
			break
}	
break
#endregion
#region(Pulup_kalum)
case"Pulup_kalum":
scr_text(scr_json_lang(global.LANGUAGE,"Pulup_kalum1"),2,spr_ic_Krus,spr_ic_Anton);
scr_text(scr_json_lang(global.LANGUAGE,"Pulup_kalum2"),2,spr_ic_Krus,spr_ic_Zoo_seller);
break
#endregion
// жителі
#region (Zinki)
case"Zinki":
switch(irandom_range(1,5)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Zinki1"),2,spr_ic_Krus,spr_ic_sekta_2);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Zinki2"),2,spr_ic_Krus,spr_ic_sekta_2);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Zinki3"),2,spr_ic_Krus,spr_ic_sekta_2);
			break
			case 4:
			scr_text(scr_json_lang(global.LANGUAGE,"Zinki4"),2,spr_ic_Krus,spr_ic_sekta_2);
			break
			case 5:
			scr_text(scr_json_lang(global.LANGUAGE,"Zinki5"),2,spr_ic_Krus,spr_ic_sekta_2);
			break
}	
break
#endregion
#region(Worksman)
case"Worksman":
switch(irandom_range(1,5)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Worksman1"),2,spr_ic_Krus,spr_ic_Arcadii);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Worksman2"),2,spr_ic_Krus,spr_ic_Arcadii);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Worksman3"),2,spr_ic_Krus,spr_ic_Arcadii);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Worksman4"),2,spr_ic_Krus,spr_ic_Arcadii);
			break
			case 5:
		scr_text(scr_json_lang(global.LANGUAGE,"Worksman5"),2,spr_ic_Krus,spr_ic_Arcadii);
			break
}	
break
#endregion
#region(Boi)
case"Boi":
switch(irandom_range(1,4)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Boi1"),2,spr_ic_Krus,spr_ic_ditu_1);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Boi2"),2,spr_ic_Krus,spr_ic_ditu_1);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Boi3"),2,spr_ic_Krus,spr_ic_ditu_2);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Boi4"),2,spr_ic_Krus,spr_ic_ditu_2);
			break
}	
break
#endregion
#region(Girl)
case"Girl":
switch(irandom_range(1,5)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Girl"),2,spr_ic_Krus,spr_ic_ditu_3);
		scr_text(scr_json_lang(global.LANGUAGE,"Gir2"),1,spr_ic_Krus,spr_ic_ditu_3);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Gir3"),2,spr_ic_Krus,spr_ic_ditu_3);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Gir4"),2,spr_ic_Krus,spr_ic_ditu_3);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Gir5"),2,spr_ic_Krus,spr_ic_ditu_4);
			break
			case 5:
		scr_text(scr_json_lang(global.LANGUAGE,"Gir6"),2,spr_ic_Krus,spr_ic_ditu_4);
			break
}	
#endregion
// магазин меблів та техніки
#region(larusa)
case"larusa":
	scr_text(scr_json_lang(global.LANGUAGE,"larusa1"),2,spr_ic_Krus,spr_ic_Shmuga);
	scr_text(scr_json_lang(global.LANGUAGE,"larusa11"),2,spr_ic_Krus,spr_ic_Shmuga);
		scr_option(scr_json_lang(global.LANGUAGE,"larusa2"),"By_larusa");
		scr_option(scr_json_lang(global.LANGUAGE,"larusa22"),"Ref_larusa")
break
case "Ref_larusa":
	scr_text(scr_json_lang(global.LANGUAGE,"larusa11"),2,spr_ic_Krus,spr_ic_Shmuga);
	scr_text(scr_json_lang(global.LANGUAGE,"larusa2"),1,spr_ic_Krus,spr_ic_Shmuga);
	scr_text(scr_json_lang(global.LANGUAGE,"larusa3"),2,spr_ic_Krus,spr_ic_Shmuga);
	scr_text(scr_json_lang(global.LANGUAGE,"larusa4"),1,spr_ic_Krus,spr_ic_Shmuga);
	scr_text(scr_json_lang(global.LANGUAGE,"larusa5"),2,spr_ic_Krus,spr_ic_Shmuga);
	scr_text(scr_json_lang(global.LANGUAGE,"larusa6"),1,spr_ic_Krus,spr_ic_Shmuga);
break
case"By_larusa":
	instance_create_depth(obj_dim_player1.x,90,-9999,obj_technic)
	obj_technic.shopOpen = true;
	global.shop = true;
break
#endregion
#region(Panton)
case"Panton":
scr_text(scr_json_lang(global.LANGUAGE,"Panton1"),2,spr_ic_Krus,spr_ic_Platon);
	scr_option(scr_json_lang(global.LANGUAGE,"Panton2"),"pant_prod");
	scr_option(scr_json_lang(global.LANGUAGE,"Panton4"),"pant_nicho");
break
	case"pant_prod":
	scr_text(scr_json_lang(global.LANGUAGE,"Panton3"),2,spr_ic_Krus,spr_ic_Platon);
	instance_create_depth(obj_dim_player1.x,90,-9999,obj_furniture)
	obj_furniture.shopOpen = true;
	global.shop = true;
	// OPEN MAGAZ
	break
	case"pant_nicho":
	scr_text(scr_json_lang(global.LANGUAGE,"Panton5"),2,spr_ic_Krus,spr_ic_Platon);
	break
#endregion
#region (Stiopa)
case"Stiopa":
scr_text(scr_json_lang(global.LANGUAGE,"Stiopa1"),2,spr_ic_Krus,spr_ic_stiopa_tyshonka);
	scr_option(scr_json_lang(global.LANGUAGE,"Stiopa2"),"Provodu_Stiopa");
	scr_option(scr_json_lang(global.LANGUAGE,"Stiopa6"),"By_Stiopa");
	scr_option(scr_json_lang(global.LANGUAGE,"Stiopa14"),"Kinec_Stiopa");
break
	case"Provodu_Stiopa":
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa2"),1,spr_ic_Krus,spr_ic_stiopa_tyshonka);
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa3"),2,spr_ic_Krus,spr_ic_stiopa_tyshonka);
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa4"),1,spr_ic_Krus,spr_ic_stiopa_tyshonka);
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa5"),2,spr_ic_Krus,spr_ic_stiopa_tyshonka);
		scr_option(scr_json_lang(global.LANGUAGE,"Stiopa6"),"By_Stiopa");
		scr_option(scr_json_lang(global.LANGUAGE,"Stiopa14"),"Kinec_Stiopa");
	break
	case"By_Stiopa":
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa7"),1,spr_ic_Krus,spr_ic_stiopa_tyshonka);
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa8"),2,spr_ic_Krus,spr_ic_stiopa_tyshonka);
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa9"),1,spr_ic_Krus,spr_ic_stiopa_tyshonka);	
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa10"),2,spr_ic_Krus,spr_ic_stiopa_tyshonka);
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa11"),1,spr_ic_Krus,spr_ic_stiopa_tyshonka);
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa12"),1,spr_ic_Ytopurok,spr_ic_Krus);
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa121"),1,spr_ic_Ytopurok,spr_ic_stiopa_tyshonka);
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa13"),2,spr_ic_Ytopurok,spr_ic_stiopa_tyshonka);
	
	instance_create_depth(obj_dim_player1.x,90,-9999,obj_fishery)
	obj_fishery.shopOpen = true;
	global.shop = true;
	// відкриття магазину!!!
	break
	case"Kinec_Stiopa":
	scr_text(scr_json_lang(global.LANGUAGE,"Stiopa15"),2,spr_ic_Krus,spr_ic_stiopa_tyshonka);
	break
#endregion
#region (Panku)
case"Panku":
switch(irandom_range(1,5)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Panku1"),2,spr_ic_Krus,spr_ic_Pank);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Panku2"),2,spr_ic_Krus,spr_ic_Pank);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Panku3"),2,spr_ic_Krus,spr_ic_Pank);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Panku4"),2,spr_ic_Krus,spr_ic_Pank);
			break
			case 5:
		scr_text(scr_json_lang(global.LANGUAGE,"Panku5"),2,spr_ic_Krus,spr_ic_Pank);
			break
}	
break
#endregion

// Тухлянка
#region (Children)
case"Children":
switch(irandom_range(1,5)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Childrenl"),2,spr_ic_Krus,spr_ic_ditu_2);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Children2"),2,spr_ic_Krus,spr_ic_ditu_3);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Children3"),2,spr_ic_Krus,spr_ic_ditu_1);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Children4"),2,spr_ic_Krus,spr_ic_ditu_4);
			break
			case 5:
				switch(irandom_range(1,5)){
				case 1:
				scr_text(scr_json_lang(global.LANGUAGE,"Children51"),2,spr_ic_Krus,spr_ic_ditu_4);
				break
				case 2:
				scr_text(scr_json_lang(global.LANGUAGE,"Children52"),2,spr_ic_Krus,spr_ic_ditu_2);
				break
				case 3:
				scr_text(scr_json_lang(global.LANGUAGE,"Children53"),2,spr_ic_Krus,spr_ic_ditu_4);
				break
				case 4:
				scr_text(scr_json_lang(global.LANGUAGE,"Children54"),2,spr_ic_Krus,spr_ic_ditu_1);
				break
				case 5:
				scr_text(scr_json_lang(global.LANGUAGE,"Children54"),2,spr_ic_Krus,spr_ic_ditu_2);
				break
				case 6:
				scr_text(scr_json_lang(global.LANGUAGE,"Children55"),2,spr_ic_Krus,spr_ic_ditu_3);
				break
				}
			break
}	

break
#endregion
#region (Muter_with_childcar)
case"Muter_with_childcar":
switch(irandom_range(1,4)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Muter_with_childcar1"),2,spr_ic_Krus,spr_ic_Hostes);
		scr_text(scr_json_lang(global.LANGUAGE,"Muter_with_childcar2"),2,spr_ic_Krus,spr_ic_Hostes);
		scr_text(scr_json_lang(global.LANGUAGE,"Muter_with_childcar3"),2,spr_ic_Krus,spr_ic_Hostes);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Muter_with_childcar4"),2,spr_ic_Krus,spr_ic_Hostes);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Muter_with_childcar5"),2,spr_ic_Krus,spr_ic_Hostes);
		scr_text(scr_json_lang(global.LANGUAGE,"Muter_with_childcar6"),2,spr_ic_Krus,spr_ic_Hostes);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Muter_with_childcar7"),2,spr_ic_Krus,spr_ic_Hostes);
			break

}	

break
#endregion
#region(Muter)
case"Muter":
scr_text(scr_json_lang(global.LANGUAGE,"Muter1"),2,spr_ic_Krus,spr_ic_Kelt_kasa);
	scr_option(scr_json_lang(global.LANGUAGE,"Muter2"),"Yes_muter");
	scr_option(scr_json_lang(global.LANGUAGE,"Muter4"),"Nein_muter");
break
	case"Yes_muter":
	scr_text(scr_json_lang(global.LANGUAGE,"Muter3"),2,spr_ic_Krus,spr_ic_Kelt_kasa);
	break
	case"Nein_muter":
	scr_text(scr_json_lang(global.LANGUAGE,"Muterr5"),2,spr_ic_Krus,spr_ic_Kelt_kasa);
	scr_text(scr_json_lang(global.LANGUAGE,"Muter6"),2,spr_ic_Krus,spr_ic_Kelt_kasa);
	break


#endregion
#region (Babyli)
case"Babyli":
scr_text(scr_json_lang(global.LANGUAGE,"Babyli1"),2,spr_ic_Krus,spr_ic_Babulia);
switch(irandom_range(1,2)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Babyli3"),2,spr_ic_Krus,spr_ic_Babulia);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Babyli2"),2,spr_ic_Krus,spr_ic_Babulia);
			break
}	
scr_text(scr_json_lang(global.LANGUAGE,"Babyli4"),2,spr_ic_Krus,spr_ic_Babulia);
break
#endregion

//бійцівський клуб
#region (Makedon)
case"Makedon":
switch(irandom_range(1,4)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Makedon1"),2,spr_ic_Krus,spr_ic_Makedon);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Makedon2"),2,spr_ic_Krus,spr_ic_Makedon);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Makedon3"),2,spr_ic_Krus,spr_ic_Makedon);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Makedon4"),2,spr_ic_Krus,spr_ic_Makedon);
			break
}	
break
#endregion
#region (Kylak)
case"Kylak":
	scr_text(scr_json_lang(global.LANGUAGE,"Kylak1"),2,spr_ic_Krus,spr_ic_Kylak);
		scr_option(scr_json_lang(global.LANGUAGE,"Kylak2"),"Sparung_Kylak");
		scr_option(scr_json_lang(global.LANGUAGE,"Kylak3"),"4");
break
case "Sparung_Kylak":
// Biika z Kylakom
break
#endregion
#region (Aperkot)
case"Aperkot":
switch(irandom_range(1,4)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Aperkot1"),2,spr_ic_Krus,spr_ic_Makedon);
		scr_text(scr_json_lang(global.LANGUAGE,"Aperkot11"),2,spr_ic_Krus,spr_ic_Makedon);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Aperkot2"),2,spr_ic_Krus,spr_ic_Makedon);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Aperkot3"),2,spr_ic_Krus,spr_ic_Makedon);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Aperkot4"),2,spr_ic_Krus,spr_ic_Makedon);
			break
}	
break
#endregion
#region (Tamara)
case"Tamara":
	scr_text(scr_json_lang(global.LANGUAGE,"Tamara1"),2,spr_ic_Krus,spr_ic_Tamara_fulupivna);
		scr_option(scr_json_lang(global.LANGUAGE,"Tamara2"),"By_Tamara");
		scr_option(scr_json_lang(global.LANGUAGE,"Tamara3"),"4");
break
case "By_Tamara":
	instance_create_depth(obj_dim_player1.x,90,-9999,obj_food_shop)
	obj_food_shop.shopOpen = true;
	global.shop = true;
// MAGAZ GONU 
break
#endregion
#region(Bibiliothekar)
case"Bibiliothekar":
	scr_text(scr_json_lang(global.LANGUAGE,"Bibiliothekar1"),2,spr_ic_Buh_Stepanovucha,spr_ic_gopnik_1);
	scr_text(scr_json_lang(global.LANGUAGE,"Bibiliothekar2"),1,spr_ic_Buh_Stepanovucha,spr_ic_gopnik_1);
	scr_text(scr_json_lang(global.LANGUAGE,"Bibiliothekar3"),2,spr_ic_Buh_Stepanovucha,spr_ic_gopnik_1);
	scr_text(scr_json_lang(global.LANGUAGE,"Bibiliothekar4"),1,spr_ic_Ytopurok,spr_ic_gopnik_1);
	scr_text(scr_json_lang(global.LANGUAGE,"Bibiliothekar5"),2,spr_ic_Ytopurok,spr_ic_Buh_Stepanovucha);
	scr_text(scr_json_lang(global.LANGUAGE,"Bibiliothekar6"),1,spr_ic_Ytopurok,spr_ic_Buh_Stepanovucha);
	scr_text(scr_json_lang(global.LANGUAGE,"Bibiliothekar7"),2,spr_ic_Ytopurok,spr_ic_gopnik_1);
	// FIGHT!!!
	scr_text(scr_json_lang(global.LANGUAGE,"Bibiliothekar8"),2,spr_ic_Ytopurok,spr_ic_Buh_Stepanovucha);
	scr_text(scr_json_lang(global.LANGUAGE,"Bibiliothekar8"),2,spr_ic_Ytopurok,spr_ic_Buh_Stepanovucha);
break
#endregion
#region(Tyrnikman)
case"Tyrnikman":
switch(irandom_range(1,4)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Tyrnikman1"),2,spr_ic_Krus,spr_ic_Hyk);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Tyrnikman2"),2,spr_ic_Krus,spr_ic_Hyk);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Tyrnikman3"),2,spr_ic_Krus,spr_ic_Hyk);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Tyrnikman4"),2,spr_ic_Krus,spr_ic_Hyk);
			break
}	
break
#endregion
#region(Schoolman)
case"Schoolman":
switch(irandom_range(1,4)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Schoolman1"),2,spr_ic_Krus,spr_ic_ditu_2);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Schoolman2"),2,spr_ic_Krus,spr_ic_ditu_2);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Schoolman3"),2,spr_ic_Krus,spr_ic_ditu_2);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Schoolman4"),2,spr_ic_Krus,spr_ic_ditu_2);
			break
			case 5:
		scr_text(scr_json_lang(global.LANGUAGE,"Schoolman5"),2,spr_ic_Krus,spr_ic_ditu_2);
			break
}	
break
#endregion
#region(Skinhead)
case"Skinhead":
switch(irandom_range(1,4)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Skinhead1"),2,spr_ic_Krus,spr_ic_Skihead);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Skinhead2"),2,spr_ic_Krus,spr_ic_Skihead);
		scr_text(scr_json_lang(global.LANGUAGE,"Skinhead21"),2,spr_ic_Krus,spr_ic_Skihead);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Skinhead3"),2,spr_ic_Krus,spr_ic_Skihead);
		scr_text(scr_json_lang(global.LANGUAGE,"Skinhead31"),2,spr_ic_Krus,spr_ic_Skihead);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Skinhead4"),2,spr_ic_Krus,spr_ic_Skihead);
			break
}	
break
#endregion
#region(Torchok)
case"Torchok":
switch(irandom_range(1,5)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Torchok1"),2,spr_ic_Krus,spr_ic_Pank);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Torchok2"),2,spr_ic_Krus,spr_ic_Pank);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Torchok3"),2,spr_ic_Krus,spr_ic_Pank);
		scr_text(scr_json_lang(global.LANGUAGE,"Torchok31"),2,spr_ic_Krus,spr_ic_Pank);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Torchok4"),2,spr_ic_Krus,spr_ic_Pank);
			break
			case 5:
		scr_text(scr_json_lang(global.LANGUAGE,"Torchok5"),2,spr_ic_Krus,spr_ic_Pank);
			break
}	
break
#endregion
#region(Sekta)
case"Sekta":
switch(irandom_range(1,8)){
			case 1:
		scr_text(scr_json_lang(global.LANGUAGE,"Sekta1"),2,spr_ic_Krus,spr_ic_sekta_1);
			break
			case 2:
		scr_text(scr_json_lang(global.LANGUAGE,"Sekta2"),2,spr_ic_Krus,spr_ic_sekta_1);
			break
			case 3:
		scr_text(scr_json_lang(global.LANGUAGE,"Sekta3"),2,spr_ic_Krus,spr_ic_sekta_3);
			break
			case 4:
		scr_text(scr_json_lang(global.LANGUAGE,"Sekta4"),2,spr_ic_Krus,spr_ic_sekta_3);
			break
			case 5:
		scr_text(scr_json_lang(global.LANGUAGE,"Sekta5"),2,spr_ic_Krus,spr_ic_sekta_3);
			break
			case 6:
		scr_text(scr_json_lang(global.LANGUAGE,"Sekta6"),2,spr_ic_Krus,spr_ic_sekta_2);
			break
			case 7:
		scr_text(scr_json_lang(global.LANGUAGE,"Sekta7"),2,spr_ic_Krus,spr_ic_sekta_4);
			break
			case 8:
		scr_text(scr_json_lang(global.LANGUAGE,"Sekta8"),2,spr_ic_Krus,spr_ic_sekta_4);
			break
	
}	
break
#endregion
#region(Myzukantu)
case"Myzukantu":
	scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu1"),2,spr_ic_Krus,spr_ic_sekta_5);
		scr_option(scr_json_lang(global.LANGUAGE,"Myzukantu20"),"M_ask");
		scr_option(scr_json_lang(global.LANGUAGE,"Myzukantu30"),"M_refuse");
		scr_option(scr_json_lang(global.LANGUAGE,"Myzukantu40"),"M_give_money");
break
		case"M_ask":
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu22"),1,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu23"),2,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu24"),1,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu25"),2,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu26"),1,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu27"),2,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu28"),1,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu29"),2,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu210"),1,spr_ic_Krus,spr_ic_sekta_5);
		break
		case"M_refuse":
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu31"),1,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu32"),2,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu33"),2,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu34"),2,spr_ic_Krus,spr_ic_sekta_5);
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu35"),2,spr_ic_Krus,spr_ic_sekta_5);
		break
		case"M_give_money":
		scr_text(scr_json_lang(global.LANGUAGE,"Myzukantu41"),2,spr_ic_Krus,spr_ic_sekta_5);
		break
		

#endregion

#region (Cutscene 2)
case "Krus_day2":
	scr_text("Соня, вставай!!!");
break
#endregion
#region (Cutscene 3)
case "Krus_day3":
	scr_text("Вибачте!");
break
#endregion
case "4":
	
	break
	}
}