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
	scr_text("The gorgeous weather!","Rusty");
	scr_text("Sure. Indian summer... Even in the morning, it's good.", "player");
	scr_text("Shall we look for your chum?", "player");
	scr_text("Why not?","Rusty");
	scr_text("And where he lives?", "player");
	scr_text("Damn knows? He eats tangerines, a lot…","Rusty");
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
	
	
case "4":
	
	break
	}
}