battle_start = false;
hpKrys = 50;
hpYtopyrok = 50; 
//global.MaxHp = hpKrys+hpYtopyrok
//activation_seq_sect = 0;
light_bi = 0; // мерехтілка вимкнена
battle_turn_down = false;
phase_battle = 0;
H=0;
games = false;
answer = 1;
dialogue_was = false;
dor_sound = noone;
mini_game = true; //міні-гра не активна
butt_invis = 1; //видимість кнопок
BDialogue = false; //діалог
luck = irandom_range(0, 100);

gui_H = 1080;
gui_W = 1920;

//gui_H = display_get_gui_height();
//gui_W = display_get_gui_width();
//room_width = global.res_width;
//room_height = global.res_height;
//gui_W = room_width/2;
//gui_H = room_height/2;

another_fone = false;
//мигання тексту
flash_state = false;
flash_timer = 0;

target_x = 0;
target_y = 0;

game_over_mini = false
amount_hp = 279;
target_rm = room;
amount_hp_enemy = 96;
//damage_enemy = 0;
hp_enemies = false;
hp_one = 0; //відповідає за премикання полоски хп
alarm[10] = 60;
enemies = ENEMY.Noname;
enum ENEMY{
Noname,
Narkomany,
Kavkazci,
Sectants,
Hopniki,
Torchky,
Sect,
}

aliens = ALIES.Noone;
enum ALIES{
Noone,
Ytopurok_mini,
Krus_mini,
}
phase_battle = PHASES.Atack;
enum PHASES{
Atack,
Defence,
}
//торчки
count = 0;
lives_enemy = true;
//кавказці
count_kavkaz = 0;
lives_enemy_kavkaz = true;
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
pay = 10;
//text_torchky = "Натисніть “W” або “Стрілочка вгору”, щоб почати бійку. Ухиляйтеся від шприців за допомогою відштовхування в повітрі на кнопку “W” або “Стрілочка вгору”."
st_text_torchky = "Press 'W' or 'Arrow UP' to start a fight. Dodge syringes flapping between them."
stringHeight_torchky = string_height(st_text_torchky);
#region Діалоги угропувань
/*
if(global.LANGUAGE = "eng"){
#region діалоги торчків
dia_torchky[1][0] = "Maybe let's come to an agreement somehow?";
dia_torchky[2][0] = "What is there? Flour?"; 
dia_torchky[3][0] = "Don't you think this is superfluous?";

dia_torchky[1][1] = "Hey, sucker, give the grub here.";
dia_torchky[2][1] = "We will finish it..."; 
dia_torchky[3][1] = "Fine. No weather day today. Fuck off!";

dia_torchky[1][2] = "Where!?";
dia_torchky[2][2] = "Huh? Didn't get that."; 

#endregion

#region діалоги сектантів
dia_sect[1][0] = "Maybe let's come to an agreement somehow?";
dia_sect[2][0] = "I heard that now the service in church..."; 
dia_sect[3][0] = "Don't you think this is superfluous?";

dia_sect[1][1] = "This should've been talked about earlier, not when they raised their hand against their neighbor.";
dia_sect[2][1] = "You should always give people a chance."; 
dia_sect[3][1] = "Oh child, go with God!";

dia_sect[1][2] = "Huh? What, really?";
dia_sect[2][2] = "We are not falling into this again!"; 

#endregion

#region діалоги кавказців
dia_caucasci[1][0] = "Maybe let's come to an agreement somehow?";
dia_caucasci[2][0] = "What did Makhno say to Chapaev?"; 
dia_caucasci[3][0] = "Don't you think this is superfluous?";

dia_caucasci[1][1] = "Hey bros, no bullshit. It's already late, brothers.";
dia_caucasci[2][1] = "Oh, I felt sorry for this brats. Now scram."; 

dia_caucasci[1][2] = "Am I an anarchist?";
dia_caucasci[2][2] = "I give up!"; 
#endregion

#region діалоги гопників

dia_hopniki[1][0] = "Maybe let's come to an agreement somehow?";
dia_hopniki[2][0] = "Oh, and there's a lump of money going..."; 
dia_hopniki[3][0] = "Don't you think this is superfluous?";

dia_hopniki[1][1] = "Turn out your pockets!";
dia_hopniki[2][1] = "Nah, you two gonna feel everything."; 
dia_hopniki[3][1] = "Run, rabbits, we count 3....2....";

dia_hopniki[1][2] = "Shit, the wallet runs away!";
dia_hopniki[2][2] = "Do you think we are blind?"; 
#endregion
}

///////////////////////////////////////////////////////////////////////
if(global.LANGUAGE = "ua"){
	
#region діалоги торчків
dia_torchky[1][0] = "Може давайте якось домовимося?";
dia_torchky[2][0] = "Це там що? Закладка?";	
dia_torchky[3][0] = "Вам не здається це лишнім?";

dia_torchky[1][1] = "Ей, придурки, гоніть пожрать.";
dia_torchky[2][1] = "Давай уж до кінця...";
dia_torchky[3][1] = "Погодка-то не льотна сьогодні. Валіть!";

dia_torchky[1][2] = "Де!?";
dia_torchky[2][2] = "А? Не поняв."; 
#endregion

#region діалоги сектантів
dia_sect[1][0] = "Може давайте якось домовимося?";
dia_sect[2][0] = "Мені чулось, що зараз служба..."; 
dia_sect[3][0] = "Вам не здається це лишнім?"; 

dia_sect[1][1] = "Про це треба було говорити раніше, а не коли підняли руку на ближнього свого.";
dia_sect[2][1] = "Завжди потрібно давати людям шанс."; 
dia_sect[3][1] = "Та дитя, йди ти з Богом!"; 

dia_sect[1][2] = "Ми на це знову не поведемось!";
dia_sect[2][2] = "А? Що справді?"; 
#endregion

#region діалоги кавказців
dia_caucasci[1][0] = "Може давайте якось домовимося?";
dia_caucasci[2][0] = "Шо сказав Махно Чапаєву?"; 
dia_caucasci[3][0] = "Вам не здається це лишнім?";

dia_caucasci[1][1] = "Ей брат, не нічі херні. Позно уже, брат.";
dia_caucasci[2][1] = "Ох, мнє уж жалко стало хлюпіка. Уйобуйте!";

dia_caucasci[1][2] = "Я анархіст?";
dia_caucasci[2][2] = "Я здаюсь!"; 
#endregion

#region діалоги гопників

dia_hopniki[1][0] = "Може давайте якось домовимося?";
dia_hopniki[2][0] = "Що це за пакет з грошима йде?"; 
dia_hopniki[3][0] = "Вам не здається це лишнім?";

dia_hopniki[1][1] = "Вивартейте кармани!";
dia_hopniki[2][1] = "Ні, ви двоє все відчуєте.";
dia_hopniki[3][1] = "Біжіть, зайци, на 3...2...";

dia_hopniki[1][2] = "Чорт, гаманець тікає!";
dia_hopniki[2][2] = "Думаєш, ми сліпі?";

#endregion
}
*/
#endregion
varcol[1] = c_gray;
varcol[2] = c_gray;
varcol[3] = c_gray;

stringHeight_torchky = string_height(st_text_torchky);










