hpKrys = 50;
hpYtopyrok = 50;  
global.MaxHp = hpKrys+hpYtopyrok

battle_start = false;
take_damage = false;
amount_hp = 279
damage = 10; //це можна буде видалити
light_bi = 0; // мерехтілка вимкнена
mini_game = false; //міні-гра не активна
butt_invis = 1; //видимість кнопок
BDialogue = false; //діалог
luck = irandom_range(0, 100);

gui_H = display_get_gui_height();
gui_W = display_get_gui_width();

//for button array

button_c = 1;
system = 0; 
screen = 0;

button[0] = 0;  
button[1] = "L";
button[2] = "D";
button[3] = "D";
button[4] = "D";

//ДІАЛОГИ

//text_torchky = "Натисніть “W” або “Стрілочка вгору”, щоб почати бійку. Ухиляйтеся від шприців за допомогою відштовхування в повітрі на кнопку “W” або “Стрілочка вгору”."
st_text_torchky = "Press 'W' or 'UP' to start a fight. Dodge syringes by pushing in the air on the 'W' or 'DOWN' buttons."
stringHeight_torchky = string_height(st_text_torchky);

if(global.LANGUAGE = "eng"){
dia_torchky[1][0] = "Maybe let's come to an agreement somehow?";
dia_torchky[2][0] = "What is there? Flour?"; 
dia_torchky[3][0] = "Don't you think this is superfluous?";

dia_sect[1][0] = "Maybe let's come to an agreement somehow?";
dia_sect[2][0] = "I heard that now the service...."; 
dia_sect[3][0] = "Don't you think this is superfluous?";

dia_caucasci[1][0] = "Maybe let's come to an agreement somehow?";
dia_caucasci[2][0] = "What did Makhno say to Chapaev?"; 
dia_caucasci[3][0] = "Don't you think this is superfluous?";

dia_hopniki[1][0] = "Maybe let's come to an agreement somehow?";
dia_hopniki[2][0] = "Oh, and there's a lump of money going..."; 
dia_hopniki[3][0] = "Don't you think this is superfluous?";
}
///////////////////////////////////////////////////////////////////////
if(global.LANGUAGE = "ua"){
dia_torchky[1][0] = "Може давайте якось домовимося?";
dia_torchky[2][0] = "Це там що? Закладка?";	
dia_torchky[3][0] = "Вам не здається це лишнім?";

dia_sect[1][0] = "Може давайте якось домовимося?";
dia_sect[2][0] = "Мені чулось, що зараз служба..."; 
dia_sect[3][0] = "Вам не здається це лишнім?";

dia_caucasci[1][0] = "Може давайте якось домовимося?";
dia_caucasci[2][0] = "Шо сказав Махно Чапаєву?"; 
dia_caucasci[3][0] = "Вам не здається це лишнім?";

dia_hopniki[1][0] = "Може давайте якось домовимося?";
dia_hopniki[2][0] = "Що це за пакет з грошима йде?"; 
dia_hopniki[3][0] = "Вам не здається це лишнім?";
}

varcol[1] = c_gray;
varcol[2] = c_gray;
varcol[3] = c_gray;

stringHeight_torchky = string_height(st_text_torchky);










