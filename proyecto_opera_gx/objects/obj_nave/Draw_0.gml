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
	
	case estadosnave.lanzarmisiles:
		
		if (animacion == estadosanimacion.abrircompuertas) || (animacion == estadosanimacion.cerrarcompuertas){
			draw_sprite_ext(spr_compuerta_2, subimagen, x+42, y+74, 1, 1, 0, c_white, 1)
			draw_sprite_ext(spr_compuerta_2, subimagen, x+96, y+74, 1, 1, 0, c_white, 1)
		}
		
		if (animacion == estadosanimacion.lanzarmisil){
			draw_sprite_ext(spr_lanzandomisil, subimagen, x+42, y+74, 1, 1, 0, c_white, 1)
			draw_sprite_ext(spr_lanzandomisil, subimagen, x+96, y+74, 1, 1, 0, c_white, 1)
		}
		
		
	break;
	
	case estadosnave.rayocentro:
	
		if (animacion == estadosanimacion.sacarrayo) || (animacion == estadosanimacion.guardarrayo)
			draw_sprite_ext(spr_compuerta_rayo, subimagen, x+53, y+107, 1, 1, 0, c_white, 1)
			
		if (animacion == estadosanimacion.preparandorayo)
			draw_sprite_ext(spr_preparando_rayo, subimagen, x+53, y+107, 1, 1, 0, c_white, 1)
			
		if (animacion == estadosanimacion.disparandorayo)
			draw_sprite_ext(spr_preparando_rayo, subimagen, x+53, y+107, 1, 1, 0, c_white, 1)
			
	break;
	
}
