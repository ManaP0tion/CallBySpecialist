draw_set_font(font_bullets)

if(instance_exists(obj_pistol)) {
	draw_text(x, y, string(global.pistol_bullets)+"/15")
}
if(instance_exists(obj_rifle)) {
	draw_text(x, y, string(global.rifle_bullets)+"/30")
}