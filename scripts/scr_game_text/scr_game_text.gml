///@param text_id	
function scr_game_text(_text_id){
	switch (_text_id)
	{
// вокзал		
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
	#endregion
#region (Lotereia)
case "Lotereia":
	scr_text("Діти-квіти, не хочете білет купить, долю наздогнать? Хтозна-як вам повезе на цей раз?","non_player");
		scr_option("Да, давайте. (Дать 50 копійок)","Yes_loto");
		scr_option("Ой нє, я на це ще раз не попадусь.","4");
break	
		case "Yes_loto":
		// скрипт покупки лотерейних квитків
		break
#endregion
#region (Vasia)
case "Vasia":
	scr_text("Господа, зирєлкі суйте, глядіть.","non_player");
	scr_text("Вопроси будуть задавайте блять.","non_player");
	scr_text("Не ви блять, просто блять.","non_player");	
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
#region (Gogi)
case "Gogi":
// if znoiomui = false
	scr_text("Доброго дня, чим можу допомогти, ви вже щось вибрали?","non_player");
//else
	scr_text("О, здоров мужики, що вас вітер заніс до мене? Ви так побалакать чи може чисто затариться смачною випічкою?","non_player");
	scr_option("Побалакать","speak_gog");
	scr_option("Купить","by_beckery");
break		
	case "speak_gog":		
		scr_option("Як ти? Як робота йде?","How_are_you");
		scr_option("Ми не заважаєм? Не сильно важкий день?","Hard_dayy");
	break
		case "How_are_you":
			scr_text("Доброго дня, чим можу допомогти, ви вже щось вибрали?","non_player");
		break
// тут все складно
// рандом 
	scr_text("Я впринципі нормаль. Вот получив випічку, свіжа стоїть, то розгрібають. До вечора нічого не останеться.","non_player");
	scr_text("Ну таке. День якийсь херовий. Голова болить й люди мозг компостирують.","non_player");	
	scr_text("Настрій чогось випить. Жду поки у Васі робота кінчиться й розслабимся. Та й таке.","non_player");
	scr_text("Нормально. Шумно, но приходиться привикать. Ну а шо робить? Місце ж торгове.","non_player");
	scr_text("Я єбав. Хочу спать. Хочу втікти з роботи й жить як Вася й не париться.","non_player");

	scr_text("Але в любом випадку рад що у вас все чікі-пукі. Це ж так?","non_player");
	// іф пройшли пройшли певно кількість гри
		scr_text("Так. Живемо приспівуючи, правда не знаєш що буде завтра постійно", "player");
		scr_text("Ну це да.","non_player");
	//ельзе
		scr_text("Так. Живемо приспівуючи, як різноробочі, але хоть при грошах.", "player");
		scr_text("Ну ясно, в принципі нічого сверх. Ладно, я продовжу працювать, а вам удачки.","non_player");
	case"by_beckery":
// ЗАПУСК МАГАЗА
	break
#endregion
#region (enother)
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
#endregion
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
#region (Souvenir)
case "Souvenir":
	scr_text("Здоров Крис та Утопирок. Що шастаєте й заважаєте мені продавати сувеніри? Не бачите, що із-за вас я в збитку й не можу продать нічого? ","non_player")
	scr_text("Так ж тут нема нікого.","player")
	scr_text("Хіба? А ви ким будете? Коль уже прийшли, то купіть якусь забавку.","non_player")
		scr_option("Переглянуть асортимент. Перехід до меню покупок","by_souvenir")
		scr_option("Відмовитись","4")
		
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
	scr_text("Фраєр, гоп стоп другальок, хоч пройти – монет горстку поджени.","non_player") //1
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


// центр
#region (Alladin_Step)
case "Alladin_Step":
scr_text("Здравія уважаємим господам в нашому кінотеатрі. Можу чимось допомогти?","non_player") 
	scr_option("Запитати про ім'я","name_aladin");
	// якщо пройшли тисяча та одну ніч (ТТОН)
	scr_option("Отримати бонус.","bonys_aladin");
	// якщо пройшли ТТОН та граєм білше 4-ох днів
	scr_option("дещо запитати","question_aladin");
	scr_option("закінчити діалог","end_alladin");
break
	case "name_aladin":
	scr_text("Якщо ви не проти, хотілось би дізнаться детальніше про ваше імя? Чому вас звати Аладіном?","player") 
	
	break
	case "bonys_aladin":
	scr_text("Ми можем розраховувати на якусь вдячність та люб'язність з вашої сторони? Ми вам допомогли, то хтілось отримать якісь бонуси.","player") 
	scr_text("Ага. Ну по правді помогли, но… Ну ладно, могу вас пропустить безплатно на сеанс. На той що зараз йде. Согласні?","non_player") 
		scr_option("Культурно відмовитись","thank_aladin");
		scr_option("Ладно. Це туди йти просто?","free_tiket");
	break
	
		case "thank_aladin":
			scr_text("Пожалуй це буде лишнім, й так отримали нагороду. Добре тоді, щасти вам!","player") 
		break
		case "free_tiket":
// скрипт активації безплатного входу та (-1 відношення Алладіна Степановича)
		break
	case "question_aladin":
		scr_text("Доброго дня. В нас тут пару питань. Можна попитать, якщо ви не сильно заняті?","player") 
		scr_text("Прошу.","non_player") 
		scr_text("Ви згадали, що програли свою лампу, граючи в карти з Іллею Степановичем та там… продавцем-незнайомцем на списаних поїздах. Ви якось всі знайомі?","player") 
		scr_text("Ну как вам сказать? Да, впринципє… Давні знайомі, но всьому всій час. Просто скажу, шо ви в надійних руках. Надіюсь ви прийдете на виставу.","non_player") 
	break
	
	case "end_alladin":
	scr_text("Вибачаємося, ми помилились номером. Точніш… Ай, не важливо…","player") 
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