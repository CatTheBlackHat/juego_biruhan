draw_self()

if (estado == estadosplayer.preparado){
	
	if (der)
		draw_sprite(spr_flecha_salto, -1, x, y-40);
	else
		draw_sprite_ext(spr_flecha_salto, -1, x, y-40, -1, 1, 0, c_white, 1);
	
}


//////////DEBUG

if (estado==estadosplayer.cayendo )draw_text(10,252, string("cayendo"))
if (estado==estadosplayer.lastimado )draw_text(10,252, string("lastimado"))
if (estado==estadosplayer.pared)draw_text(10, 252, string("en la pared"))
if (estado==estadosplayer.preparado)draw_text(10,252, string("preparado"))


room_speed = 30
depth = -10000
draw_text(x,y+44, string(der))