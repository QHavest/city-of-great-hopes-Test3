///@param text_id
function scr_game_text(_text_id){
	switch (_text_id)
	{
		
case "1":
	scr_text("Go out from Ukrain Moscal");
	scr_text("Get'! Get'! Get!");
	break
	
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
case "Yana":
	scr_text("Hello! Would you like to become a shareholder of LLC Three Kalinka?","non_playe");
	scr_text("Please pay attention to the services. Each certificate you buy skyrockets in value every year, so get familiar and don't struggle with the purchase.","non_playe");
		scr_option("Buy certificates Three Kalinka", "bying");
		scr_option("Refuse", "Refuse");
	break
		case "bying":
	scr_text("BY_IT");
	// скрипт покупокупок
	break
	
	case "Security1":
		scr_text("Keep your hands to yourself","non_playe");
	break
	case "Security2":
		scr_text("Moved away","non_playe");
	break
	case "Security3":
		scr_text("What…","non_playe");
	break
	
case "Boss":
	scr_text("Good afternoon, let me guess, do you want to become our shareholder?","non_playe");
		scr_option("Maybe. We don't know…","1_yes_kal")
		scr_option("No. I don't think we need it.","4")
	break
		case "1_yes_kal":
	scr_text ("But I know! We are an investment company engaged in banking, deposits and deposits. Every day, our client base increases by 2,000 people in 40 cities of the Ukrainian SSR and the BRSR... Oh, Ukraine and Belarus.");
	scr_text ("Our company is developing rapidly, but we want to grow even faster and for this we are attracting investors who will be able to increase their capital.");
	scr_text ("Everything is easy. Just buy at least one certificate of the company and hold it until it becomes more expensive than gold in just six months? Is the offer really attractive?");
		scr_option("Maybe","2_yes_kal");
		scr_option("No, I'm sorry","4");
		break;
	case "2_yes_kal":
	scr_text("Також ви можете примножить свій капітал ще на 5 відсотків запрошуючи своїх знайомих, друзів та членів сім'ї стати акціонерами. Купить акції ви зможете у нашої секретарки, я є власником. Валентин Степанович, радий знайомству.");
	break;
	
case "4":
	
	break
	}
}