if !instance_exists(obj_player) exit;
draw_self()
draw_set_font(font_text)

if(doubt=true) {
	draw_text(x, y-40, string("?"))
}

var _health;
_health = (HP / HP_MAX) * 100;

draw_healthbar(x-10, y-30, x+10, y-25, _health, c_black, c_red, c_lime, 0, true, true)