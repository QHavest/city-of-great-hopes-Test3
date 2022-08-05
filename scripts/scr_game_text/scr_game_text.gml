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
	scr_text("text");
	scr_text("whant you to play?");
		scr_option("yes", "npc1-yes");
		scr_option("no", "npc1-no");
		scr_option("I am thinking about it", "npc1-think");
		scr_option("No, but if you ask...", "npc1-change");
	break
		case "npc1-yes":
		scr_text("YES bitch you are good boi");
		break
		
		case "npc1-no":
		scr_text("Why are you gay?");
		break	
	
case "4":
	
	break
	}
}