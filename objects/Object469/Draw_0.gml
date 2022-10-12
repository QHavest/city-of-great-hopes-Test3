/*var text = scr_string(1);
draw_set_font(Font_for_language2);
draw_text(1500,1500,text);*/
var CX = x;
var CY = y;
draw_text(CX,CY - 32, scr_json_lang(global.LANGUAGE,"pause0"));
draw_text(CX,CY, scr_json_lang(global.LANGUAGE,"pause1"));
draw_text(CX,CY + 32, scr_json_lang(global.LANGUAGE,"pause2"));