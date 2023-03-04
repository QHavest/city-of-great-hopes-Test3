//запуск діалогів коли всі на місці
if obj_dim_player1.in_place and obj_dim_player2.in_place and global.dialog_end and !global.shop and global.zaniatui = true
{
scr_create_textbox(global.text_id);
global.dialogue_move = false;
}