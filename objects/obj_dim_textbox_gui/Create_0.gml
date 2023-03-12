depth=-1;
// gui movement
gui_W = display_get_gui_width();
gui_H = display_get_gui_height();
cam_y=0;
cam_x=0;
//instance_create_depth(0,0,0,obj_pauser);
please_shop_open =0;

Y_op = 0;
border = 0.02*gui_W;
o_b = border/2
ic_b = 0.015*gui_W;

line_hight = gui_H/25;
scale = line_hight/110;
line_sep = 2;
// параметри вікна з текстом

line_widt[0] = 0;
txtb_sprite = spr_textbox;
contyr = 4; // ширина контуру
txtb_img = 0;
txtb_img_spd = 6/30;
color=c_black;

global.dialog_end = 0;

// змінні для виводу тексту
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd  = 0.8;
setup = false;

 //  вибір реплік
 
 option[0]="";
 option_link_id[0] = -1;
 option_pos    = 0;
 option_number = 0;
op_sprite[1] = spr_textbox1;
op_sprite[2] = spr_textbox2;
op_sprite[3] = spr_textbox3;

// змінні для координат букв
  char[0,0] ="";
char_x[0,0] =0;
char_y[0,0] =0;
//maxi_x[0] = 0;
//line_y[0][0]=0;
//later_width[0]=0;

// звукові ефекти
snd_count=4;
snd_delay = 4;


scr_set_defaults_for_text()
