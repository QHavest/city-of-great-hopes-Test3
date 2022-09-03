if room = oldroom and obj_dim_player.key_room_go = true{
room_goto_dark(newroom, new_x, new_y)
}
if room = newroom and obj_dim_player.key_room_go = true{
room_goto_dark(oldroom, old_x, old_y)
}

if room = oldroom{
drowing = true
}
if room = newroom{
drowing = true
}

image_index = 0;