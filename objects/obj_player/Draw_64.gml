draw_set_valign(fa_middle);
draw_sprite_stretched(spr_healthbase, 0, view_xport[0]+ 80, view_yport[0] + 100, min(healthbar_width, healthbar_width), healthbar_height)
draw_sprite_stretched(spr_healthbar, 0, view_xport[0]+ 80, view_yport[0] + 100, min((HP/HP_MAX)*healthbar_width, healthbar_width), healthbar_height)
draw_set_font(font_menu)
font_set_cache_size(font_menu,20)
draw_set_color(c_white)
draw_set_halign(fa_middle);
draw_text(view_xport[0]+ 140, view_yport[0] + 120, "HP : "+string(HP))


draw_set_valign(fa_middle);
draw_sprite_stretched(spr_silentbase, 0, view_xport[0]+ 80, view_yport[0] + 140, min(silentbar_width, silentbar_width), silentbar_height)
draw_sprite_stretched(spr_silentbar, 0, view_xport[0]+ 80, view_yport[0] + 140, min((global.silent/silent_MAX)*silentbar_width, silentbar_width), silentbar_height)
draw_set_font(font_menu)
font_set_cache_size(font_menu,20)
draw_set_halign(fa_middle);
draw_text(view_xport[0]+ 140, view_yport[0] + 160, "Silent : "+string(global.silent))


draw_sprite(spr_bullets_ui, 0, 1700, 1000)
draw_set_valign(fa_middle);
draw_set_halign(fa_middle);
draw_set_color(c_white)
draw_set_font(font_menu)
font_set_cache_size(font_menu,20)
draw_text(1680, 990, string(global.pistol_bullets))