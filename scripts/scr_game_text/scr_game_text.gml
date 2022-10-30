///@param text_id	
hit_cher=0; // чи били ми черку?
function scr_game_text(_text_id){
	switch (_text_id)
	{
// вокзал		
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
	scr_text(scr_json_lang(global.LANGUAGE,"Gog2"),2,spr_ic_Krus,spr_ic_Gogi);

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
			scr_text("BY_IT",1,spr_ic_Krus,spr_ic_Yana);
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
//ЗАПУСК ПОКУПОК!
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
case "Gopota1":
//рандом
	scr_text("Фраєр, гоп стоп другальок, хоч пройти – монет горстку поджени.","non_player") 
		scr_option("Віддати всі гроші.","all_money");
		scr_option("Віддать їм 5 карбованців.","5_cent");
		scr_option("Не віддавать нічого.","fight");
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
	scr_text("Два хуя на ножках, чо уставились? Вам пальці сощетать чи як? Ну так уйобуйте.","non_player") //2
break
case "Gopota3":
	scr_text("Гена, Гена хер моржовий, Гена, Гена вредний хуй…","non_player") //3
break
case "Gopota4":
	scr_text("Сигаретки не найдьотся? А, фраєрок?","non_player") //4
		scr_option("Да, вприниципі. Бери.","give_one_siga");
		scr_option("Відмовитись","idi_naxyi");
break
		case "give_one_siga":
		// - 1 siga
		break
		
		case "idi_naxyi":
		
			scr_text("Ну а пару карбованців на сигари?","non_player")
				scr_option("Дать 1 карбованець","give_one_penny");
				scr_option("Відмовитись","idi_naxyi2");
		break
				case "idi_naxyi2":
				
			scr_text("Да ви заєбали. Гоніть тоді всьо шо у вас є.","non_player")
				scr_option("Віддать всі гроші","all_money");
				scr_option("Відмовитись","fight");
				break
				
case "Gopota_pobeda":
scr_text("Ех, гавнарі, упьоздуйте, хорош?","non_player")
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
		scr_text(scr_json_lang(global.LANGUAGE,"Aladin15"),2,spr_ic_Krus,spr_ic_Aladin);
	break
	
	case "end_alladin":
		scr_text(scr_json_lang(global.LANGUAGE,"Aladin16"),1,spr_ic_Krus,spr_ic_Aladin);
	break
#endregion
#region (Docha_alladina)
case "Docha_alladina":

break
#endregion



case "4":
	
	break
	}
}