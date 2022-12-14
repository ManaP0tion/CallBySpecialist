if !instance_exists(obj_player) exit;
draw_self()
draw_set_font(font_text)

if(doubt=true) {
	draw_text(x, y-40, string("?"))
}