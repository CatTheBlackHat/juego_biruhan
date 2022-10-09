draw_self();


switch(estado){

	case estadosnave.canones:

		if (animacion == estadosanimacion.abrircanon){
			draw_sprite_ext(spr_compuerta_1, subimagen, x+9, y+81, 1, 1, 0, c_white, 1)
			draw_sprite_ext(spr_compuerta_1, subimagen, x+132, y+81, 1, 1, 0, c_white, 1)
		}
		
		if (animacion == estadosanimacion.sacarcanon) || (animacion == estadosanimacion.guardarcanon){
			draw_sprite_ext(spr_canon_aparece, subimagen, x+4, y+81, 1, 1, 0, c_white, 1)
			draw_sprite_ext(spr_canon_aparece, subimagen, x+152, y+81, -1, 1, 0, c_white, 1)
		}
		
		if (animacion == estadosanimacion.mantenercanon){
			draw_sprite_ext(spr_canon_aparece, 11, x+4, y+81, 1, 1, 0, c_white, 1)
			draw_sprite_ext(spr_canon_aparece, 11, x+152, y+81, -1, 1, 0, c_white, 1)
		}
		
		if (animacion == estadosanimacion.dispararcanon){
			draw_sprite_ext(spr_canon_dispara, subimagen, x+4, y+81, 1, 1, 0, c_white, 1)
			draw_sprite_ext(spr_canon_dispara, subimagen, x+152, y+81, -1, 1, 0, c_white, 1)
		}
		
	break;
	
}
