depth=-99999;

cam_w = camera_get_view_width(view_camera[0]) ;
cam_x = camera_get_view_x(view_camera[0]);


// параметри вікна з текстом

line_widt[0] = 0;
txtb_sprite = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/30;
color=c_black;

font_for_math = for_normal;
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
/*X_op[0]=cam_x+8;
X_op[1]=cam_x+8;
X_op[2]=cam_x+280;
X_op[3]=cam_x+280;
Y_op[0]=camera_get_view_y(view_camera[0])+240;
Y_op[1]=camera_get_view_y(view_camera[0])+270;
Y_op[2]=camera_get_view_y(view_camera[0])+240;
Y_op[3]=camera_get_view_y(view_camera[0])+270;
*/
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
dialog_end = 0;