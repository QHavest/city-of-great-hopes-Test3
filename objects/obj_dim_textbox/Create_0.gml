depth=-99999;
instance_create_depth(0,0,0,obj_pauser);

Y_op = 0;
cam_w = camera_get_view_width(view_camera[view_current]) ;
cam_h = camera_get_view_height(view_camera[view_current]);
cam_y = camera_get_view_y(view_camera[view_current]);

border = 0.02*cam_w;
o_b = border/2

line_hight = cam_h/25;
scale = line_hight/110;
line_sep = 2;
// параметри вікна з текстом

line_widt[0] = 0;
txtb_sprite = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/30;
color=c_black;

op_sprite[1] = spr_textbox1;
op_sprite[2] = spr_textbox2;
op_sprite[3] = spr_textbox3;
op_spr=0;
op_sprh=0;
op_sprw=0;

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

// змінні для координат букв
  char[0,0] ="";
char_x[0,0] =0;
char_y[0,0] =0;
//maxi_x[0] = 0;
//line_y[0][0]=0;
//later_width[0]=0;
// ефекти
scr_set_defaults_for_text()
last_free_space = 0;