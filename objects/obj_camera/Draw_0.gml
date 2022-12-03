draw_sprite_ext( sprite_index, 0, x, y, 1, 1, 0, c_white, 1)
draw_sprite_ext( sprite_index, sub, x, y, 1, 1, seedir, c_white, 1)

draw_line( x-3, y-15, x+lengthdir_x( 4, seedir), y+lengthdir_y( 4, seedir))