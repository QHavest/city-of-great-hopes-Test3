///@param text_id
function scr_game_text(_text_id){
	switch (_text_id)
	{
		
#region (Cherka)
case "Cherka":
	scr_text("Ееее… А це ти, Васьок?","non_player");
	scr_text("Ні. Це Утопирок та Крис.", "player");
	scr_text("Ну що ви хо-х-ххх-хочите від м-мме-ммене?", "non_player");
		scr_option("кинути 2 карбованця на їжу","give_money_cher");
		scr_option("Струсити плечима","move_sholder_cher");
		scr_option("Пнуть","hit_cher1");
break
		case "give_money_cher":
		scr_text("Да хай в-вв-вас бог хор-ро-нн-ннить","non_player")
		
		case "move_sholder_cher":
		// якщо перший раз
		scr_text("Ви за сертифікатами при-пр-п-пп-пришли?","non_player");
		scr_text("Сертифікати? Ти про що? Точно… твій брат нам розповідав.", "player");	
		scr_text("Клят-тий брат. З потрохами…","non_player");
		scr_text("Співчуваємо.", "player");
		scr_text("Мені вон-нни не здались. я зн-нна-нааю. Це обманка. Но лад-нн-но. За 200 сіг від-да-ддам. Нєє, 300 й точка. Ви вродь хороши.","non_player");
			scr_option("Погодитись","yes_siga_cher");
			scr_option("Відмовитись","no_siga_cher");
			scr_option("Пнуть","hit_cher2");
		break
		
			case "yes_siga_cher":
			
			// if siga>=300 and 
			scr_text("Ох, от вас та-б-аб-бб-баком штиняє, жесть. Хоть би в упаковці…","non_player")
			// -300 сигарет Біля Черки зявляється зв’язка сигарет.
			scr_text("Ххе. Я не ку-ррю, я п'ю, но в моєму світі сігі то г-гг-гроши. Нормальний люд мене н-не-нне поважає та в-відразливо ставиться. Черка не хтів такого. Тепер хоть щось виторгую.","non_player")
			// +11 сертифікатів Черки Григоровича.
			scr_text("Там правда по-ттом токо забра-т-тт-ть можна буде. Но ви ж не забудете до т-ттого часу Ч-ччерку?","non_player")
			break
		
			case "no_siga_cher":
			scr_text("Так, й нам вони треба уже й зараз.","player")
			scr_text("Ем, ага угу.","non_player")
			break
		
		case "hit_cher2":
		scr_text("Ей, мусор!","non_player")
		// Мусор ком ін
		global.sp = spr_ic_Security;
		scr_text("Що за діла?","non_player")
			scr_option("Хочеш щоб ми і тебе пнули?","fight_cher");
			scr_option("Нічого","4");
		break
		
		case "hit_cher1":
		// Мусор ком ін
		global.sp = spr_ic_Security;
		//скрипт випадковості
		scr_text("Ей, хуліганйо, не чипать бомжа!","non_player")
		scr_text("Ви там вкрай уж наглі стали?","non_player")
		scr_text("Мені підійти й вас може тоже пнуть?","non_player")
		scr_text("Ну ви шо не чули?","non_player")
			scr_option("Хочеш щоб ми і тебе пнули?","fight_cher");
			scr_option("Вибачаємось. Більш так не будем.","sorry_cher");
		break
		
		case "fight_cher":
		scr_text("Ну давай.","non_player")
		// починається бійка
		break
		

		case "sorry_cher":
	scr_text("Ця малишня. Вот би ток доказать свою крутость.","non_player");
	scr_text("Заєбали.","non_player");
	break
#endregion
#region (Kasa)
case "Kasa":
	scr_text("Добрий день, що хочем?","non_player");
	scr_text("А куди є рейси?","player");
	scr_text("Луцьк - Шепетівка – в 1:30","non_player");
	scr_text("Ковель - Рівне – в 4:55","non_player");
	scr_text("Еребоград - Ківерці – в 8:10","non_player");
	scr_text("Є якраз два місця на верхніх полках.","non_player");
	scr_text("Коли прибуде поїзд, показуєте білет, цілий й не порваний","non_player");
	scr_text("В вагоні не смітить й алкоголь не брать, понятно?","non_player");
	scr_text("Ну а тепер якщо це всьо, то з вас 5 карбованців.","non_player");
		scr_option("Дати 5 карбованців.","bying_tiket");
		scr_option("Вибачте, ми передумали.","4");
		
break
			case "bying_tiket":
			scr_text("BY_IT");
	// скрипт покупокупок
			break
	
	break
	#endregion
#region (Lotereia)
case "Lotereia":
	scr_text("Діти-квіти, не хочете білет купить, долю наздогнать? Хтозна-як вам повезе на цей раз?","non_player");
		scr_option("Да, давайте. (Дать 50 копійок)","Yes_loto");
		scr_option("Ой нє, я на це ще раз не попадусь.","4");
		
		case "Yes_loto":
		// скрипт покупки лотерейних квитків
		break
	
break
#endregion
#region (Vasia)
case "Vasia":
	scr_text("Господа, зирєлкі суйте, глядіть.","non_player");
	scr_text("Вопроси будуть задавайте блять.","non_player");
	scr_text(/*"Не ви блять, просто блять."*/scr_json_lang(global.LANGUAGE,"dialogs0"),"non_player");	
	scr_text("Странний в тебе бізнес друг.","player");
	scr_text("Та ти просто не вкурююєш наскоко це ахуєнна тєма.","non_player");
	scr_text("Цветочки це суще прекрасне дєйство.","non_player");
	scr_text("Вот скажи, подарив свої матушці ну там букет гартензій, їй буде радосно?","non_player");
	scr_text("Я лучше подарю дєньги.","player");
	scr_text("Пішли, Крис… Ну мабуть.","player");
	scr_text("Вот. Потому вони своєю єнергетикой заряджають.","non_player");
	scr_text("Там біополя, всяка фігня.","non_player");
	scr_text("Радость, енергія простодушним… чистим душой… ","non_player");
	scr_text("Прости шо задів, ладно-ладно.","player");
	scr_text("Якийсь ти сильно нарваний, мужик. Не хоч піти лесом?","player");	
	scr_text("Нє, нє, нє. Я лиш недавно там жив.","non_player");
	scr_text("Алмаз уже мене не переварює. Так що лучше ви лесом.","non_player");
	scr_text("Ем, ладно. Забей. Ми передумали шось. ","player");
	scr_text("Ну ладно лоб. Тоді подивитесь – подходіть.","non_player");

break
#endregion
case "2":
	scr_text("lets go to try do some dialog I hope that I can do this! This text must be sooooo looong that nocing ib this word can`t take it inside. I must be consider that i can divide a lot of text to many pages");
	break
	
case "3":
	scr_text("The gorgeous weather!","non_player");
	scr_text("Sure. Indian summer... Even in the morning, it's good.", "player");
	scr_text("Shall we look for your chum?", "player");
	scr_text("Why not?","non_player");
	scr_text("And where he lives?", "player");
	scr_text("Damn knows? He eats tangerines, a lot…","non_player");
	scr_text("All year long?", "player");
		scr_option("you lie to me?", "npc1-yes");
		scr_option("I dont belive you", "npc1-no");
		scr_option("Hmm...", "npc1-think");
		scr_option("So he received on merit", "npc1-change");
	break
		case "npc1-yes":
		scr_text("Ahh... Ow... Well, that ram is whistling...too","non_player");
		scr_text("Amazing! It will definitely help. Let’s ask locals.", "player");
		
		break
		
		case "npc1-no":
		scr_text("Mey be we are not a friend?");
		break	
	
	case "npc1-think":
		scr_text("It's OK, don't worry");
		break	
		
		case "npc1-change":
		scr_text("You realy thinking so?");
		break	
#region (Yana)
case "Yana":
	scr_text("Доброго дня! Бажаєте стати акціонером компанії ООО <<Три Калинки>> ","non_player");
	scr_text("Прошу звернути увагу на послуги.","non_player");
	scr_text("Кожен куплений вами сертифікат з кожним роком виростає в ціні до небес,","non_player");
	scr_text("тому ознайомтесь й не баріться з закупівлею.","non_player");
		scr_option("Купити сертифікати", "bying_Yana");
		scr_option("Відмовитись", "4");
	break
		case "bying_Yana":
	scr_text("BY_IT");
	// скрипт покупокупок
	
	break
	
	case "Security1":
		scr_text("Руки тримай при собі.","non_playe");
	break
	case "Security2":
		scr_text("Відійшов від мене.","non_playe");
	break
	case "Security3":
		scr_text("Ну, шо…","non_playe");
	break
#endregion
#region (Boss)
case "Boss":

	scr_text("Доброго дня,  дайте угадаю, ви хочете стати нашим акціонером?","non_player");
		scr_option("Можливо. Ми не знаєм…","1_yes_kal")
		scr_option("Ні.","4")
	break
		case "1_yes_kal":
	scr_text ("Зате знаю я!","non_player");
	scr_text ("Ми є інвесторською компанією, що займається банкінгом, вкладами та депозитами.","non_player");
	scr_text ("Кожного дня наша клієнська база збільшується на 2 тисячі чоловік...","non_player");
	scr_text ("в 40 містах УРСР і БРСР… Ой, України й Білорусії.","non_player");
	scr_text ("Наша компанія стрімко розвивається, але ми хочемо рости ще швидше й залучаєм для цього інвесторів","non_player");
	scr_text ("Все легко.","non_player");
	scr_text ("Просто купіть мінімум один сертифікат компанії та тримайте","non_player");
	scr_text ("тримайте, поки вона не стане дорожче від золота","non_player");
	scr_text ("всього лиш через пів року?","non_player");
	scr_text ("Правда приваблива пропозиція?","non_player");
	
		scr_option("Maybe","2_yes_kal");
		scr_option("No, I'm sorry","4");
		break;
	case "2_yes_kal":
	scr_text ("Також ви можете примножить свій капітал ще на 5 відсотків запрошуючи","non_player");
	scr_text ("своїх знайомих, друзів та членів сім'ї стати акціонерами.","non_player");
	scr_text ("Купить акції ви зможете у нашої секретарки, я є власником.","non_player");
	scr_text ("Валентин Степанович, радий знайомству.","non_player");
	break;
#endregion
case "4":
	
	break
	}
}