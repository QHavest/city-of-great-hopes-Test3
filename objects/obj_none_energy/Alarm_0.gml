obj_Battle_Interface.battle_start = false;

if (obj_Battle_Interface.battle_start == false and obj_Battle_Interface.game_over_mini == true)
  {  
    global.dialog_end = true;
    global.zaniatui = false;
    with(obj_Battle_Interface)
    {
    another_fone = false;
    hp_one = 0;
    amount_hp = 279;
    game_over_mini = false;
    mini_game = true
    hp_enemies = false;
    games = false
    hpKrys = 50;
    hpYtopyrok = 50;
    amount_hp_enemy = 96;
    }
    var moneys = irandom_range(5,10)
    global.money -= moneys;
    instance_activate_object(obj_dim_player1);
    instance_activate_object(obj_dim_player2);
    
      //obj_dim_player1.x = 1795
      //obj_dim_player1.y = 270
      //obj_dim_player2.x = 1900
      //obj_dim_player2.y = 270
      obj_dim_player1.x = 170;
        obj_dim_player1.y = 100;
      obj_dim_player2.x = 200;
        obj_dim_player2.y = 100;
    
    with (obj_dim_player1)
    {
    if (last_active = true)
    {
    status = STATUS.ACTIVE;
    }}
    with (obj_dim_player2)
    {
    if (last_active = true)
    {
    status = STATUS.ACTIVE;
    }}
      //room_goto(rm_end);
	  screenshot = sprite_create_from_surface(application_surface,0,0,global.res_width,global.res_height,0,0,0,0);
	  draw_sprite(screenshot, 0, 0, 0);
	  layer_create(-999, "cut");
	  seq_AF = layer_sequence_create("cut", 0, 0, seq_toMenu);
	  
  }
if(global.task != 3) instance_destroy();