if drowing = true and room = newroom and old_side = false{
draw_sprite_ext(new_help_sprite, -1, obj_dim_player1.x + help_x, obj_dim_player1.y + help_y, 0.5, 0.5, 0, -1, 1)
}
if drowing = true and room = newroom and old_side = true{
draw_sprite_ext(new_help_sprite, -1, obj_dim_player1.x - help_x, obj_dim_player1.y - help_y, 0.5, 0.5, 0, -1, 1)
}
if drowing = true and room = oldroom and new_side = false{
draw_sprite_ext(old_help_sprite, -1, obj_dim_player1.x + help_x, obj_dim_player1.y + help_y, 0.5, 0.5, 0, -1, 1)
}
if drowing = true and room = oldroom and new_side = true{
draw_sprite_ext(old_help_sprite, -1, obj_dim_player1.x - help_x, obj_dim_player1.y - help_y, 0.5, 0.5, 0, -1, 1)
}
drowing = false

