///@param text_id
function scr_game_text(_text_id){
	switch (_text_id)
	{

#region (Kasa)
case "Kasa":
	scr_text("Добрий день, що хочем?","non_playe");
	scr_text("А куди є рейси?","player");
	scr_text("Луцьк - Шепетівка – в 1:30","non_playe");
	scr_text("Ковель - Рівне – в 4:55","non_playe");
	scr_text("Еребоград - Ківерці – в 8:10","non_playe");
	scr_text("Є якраз два місця на верхніх полках.","non_playe");
	scr_text("Коли прибуде поїзд, показуєте білет, цілий й не порваний","non_playe");
	scr_text("В вагоні не смітить й алкоголь не брать, понятно?","non_playe");
	scr_text("Ну а тепер якщо це всьо, то з вас 5 карбованців.","non_playe");
		scr_option("Дати 5 карбованців.","bying_tiket");
		scr_option("Вибачте, ми передумали.","4");
break
			case "bying_tiket":
			scr_text("BY_IT");
	// скрипт покупокупок
			break
	
	break
	#endregion
#region (Vasia)
case "Vasia":
	scr_text("Господа, зирєлкі суйте, глядіть.","non_playe");
	scr_text("Вопроси будуть задавайте блять.","non_playe");
	scr_text("Не ви блять, просто блять.","non_playe");	
	scr_text("Странний в тебе бізнес друг.","player");
	scr_text("Та ти просто не вкурююєш наскоко це ахуєнна тєма.","non_playe");
	scr_text("Цветочки це суще прекрасне дєйство.","non_playe");
	scr_text("Вот скажи, подарив свої матушці ну там букет гартензій, їй буде радосно?","non_playe");
	scr_text("Я лучше подарю дєньги.","player");
	scr_text("Пішли, Крис… Ну мабуть.","player");
	scr_text("Вот. Потому вони своєю єнергетикой заряджають.","non_playe");
	scr_text("Там біополя, всяка фігня.","non_playe");
	scr_text("Радость, енергія простодушним… чистим душой… ","non_playe");
	scr_text("Прости шо задів, ладно-ладно.","player");
	scr_text("Якийсь ти сильно нарваний, мужик. Не хоч піти лесом?","player");	
	scr_text("Нє, нє, нє. Я лиш недавно там жив.","non_playe");
	scr_text("Алмаз уже мене не переварює. Так що лучше ви лесом.","non_playe");
	scr_text("Ем, ладно. Забей. Ми передумали шось. ","player");
	scr_text("Ну ладно лоб. Тоді подивитесь – подходіть.","non_playe");

break
#endregion
case "2":
	scr_text("lets go to try do some dialog I hope that I can do this! This text must be sooooo looong that nocing ib this word can`t take it inside. I must be consider that i can divide a lot of text to many pages");
	break
	
case "3":
	scr_text("The gorgeous weather!","non_playe");
	scr_text("Sure. Indian summer... Even in the morning, it's good.", "player");
	scr_text("Shall we look for your chum?", "player");
	scr_text("Why not?","non_playe");
	scr_text("And where he lives?", "player");
	scr_text("Damn knows? He eats tangerines, a lot…","non_playe");
	scr_text("All year long?", "player");
		scr_option("you lie to me?", "npc1-yes");
		scr_option("I dont belive you", "npc1-no");
		scr_option("Hmm...", "npc1-think");
		scr_option("So he received on merit", "npc1-change");
	break
		case "npc1-yes":
		scr_text("Ahh... Ow... Well, that ram is whistling...too","Rusty");
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
	scr_text("Доброго дня! Бажаєте стати акціонером компанії ООО <<Три Калинки>> ","non_playe");
	scr_text("Прошу звернути увагу на послуги.","non_playe");
	scr_text("Кожен куплений вами сертифікат з кожним роком виростає в ціні до небес,","non_playe");
	scr_text("тому ознайомтесь й не баріться з закупівлею.","non_playe");
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

	scr_text("Доброго дня,  дайте угадаю, ви хочете стати нашим акціонером?","non_playe");
		scr_option("Можливо. Ми не знаєм…","1_yes_kal")
		scr_option("Ні.","4")
	break
		case "1_yes_kal":
	scr_text ("Зате знаю я!","non_playe");
	scr_text ("Ми є інвесторською компанією, що займається банкінгом, вкладами та депозитами.","non_playe");
	scr_text ("Кожного дня наша клієнська база збільшується на 2 тисячі чоловік...","non_playe");
	scr_text ("в 40 містах УРСР і БРСР… Ой, України й Білорусії.","non_playe");
	scr_text ("Наша компанія стрімко розвивається, але ми хочемо рости ще швидше й залучаєм для цього інвесторів","non_playe");
	scr_text ("Все легко.","non_playe");
	scr_text ("Просто купіть мінімум один сертифікат компанії та тримайте","non_playe");
	scr_text ("тримайте, поки вона не стане дорожче від золота","non_playe");
	scr_text ("всього лиш через пів року?","non_playe");
	scr_text ("Правда приваблива пропозиція?","non_playe");
	
		scr_option("Maybe","2_yes_kal");
		scr_option("No, I'm sorry","4");
		break;
	case "2_yes_kal":
	scr_text ("Також ви можете примножить свій капітал ще на 5 відсотків запрошуючи","non_playe");
	scr_text ("своїх знайомих, друзів та членів сім'ї стати акціонерами.","non_playe");
	scr_text ("Купить акції ви зможете у нашої секретарки, я є власником.","non_playe");
	scr_text ("Валентин Степанович, радий знайомству.","non_playe");
	break;
#endregion
case "4":
	
	break
	}
}