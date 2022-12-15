/*
draw_sprite(spr_healthbase, 1, 8 ,64)
draw_sprite_ext(spr_healthbar, 1, 8, 64, max(0, obj_player.HP/obj_player.HP_MAX), 1, 0, c_white, 1)
draw_set_font(font_menu)
draw_set_color(c_white)
draw_text(view_xport[0] + 375, view_yport[0] +22, string_hash_to_newline(string(+string(obj_player.HP)+ "/"+string(obj_player.HP_MAX)) ))






/*
draw_set_font(font_menu)
draw_sprite_stretched(spr_healthbase, 0, view_xport[0]+ 80, view_yport[0] + 100, min(healthbar_width, healthbar_width), healthbar_height)
draw_sprite_stretched(spr_healthbar, 0, view_xport[0]+ 80, view_yport[0] + 100, min((obj_player.HP/obj_player.HP_MAX)*healthbar_width, healthbar_width), healthbar_height)
font_set_cache_size(font_menu,20)
draw_set_color(c_white)
draw_text(view_xport[0]+ 100, view_yport[0] + 100, "HP : "+string(obj_player.HP))
draw_text(100, 130, "BULLET : "+string(global.pistol_bullets))


draw_set_font(font_menu)
draw_sprite_stretched(spr_silentbase, 0, silentbar_x, silentbar_y, min(silentbar_width, silentbar_width), silentbar_height)
draw_sprite_stretched(spr_silentbar, 0, silentbar_x, silentbar_y, min((global.silent/silent_MAX)*silentbar_width, silentbar_width), silentbar_height)
font_set_cache_size(font_menu,20)
draw_text(view_xport[0]+ 100, view_yport[0] + 140, "Silent : "+string(global.silent))


