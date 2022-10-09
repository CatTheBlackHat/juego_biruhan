draw_self()

if (estado == estadoplayer.preparado){
	
	if (der)
		draw_sprite(spr_flecha_salto, -1, x, y-40);
	else
		draw_sprite_ext(spr_flecha_salto, -1, x, y-40, -1, 1, 0, c_white, 1);
	
}


//////////DEBUG

if (estado==estadoplayer.cayendo )draw_text(10,252, string("cayendo"))
if (estado==estadoplayer.lastimado )draw_text(10,252, string("lastimado"))
if (estado==estadoplayer.pared)draw_text(10, 252, string("en la pared"))
if (estado==estadoplayer.preparado)draw_text(10,252, string("preparado"))


room_speed = 30
depth = -10000
draw_text(x,y+64, string(der))