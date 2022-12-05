if !instance_exists(obj_player) exit;
if point_distance( x, y, obj_player.x, obj_player.y) < 24 && keyboard_check_pressed(ord("C"))
{
  click = 1
  alarm[0] = 60
  audio_play_sound(snd_button_click, 1, 0) 
}
image_index = click