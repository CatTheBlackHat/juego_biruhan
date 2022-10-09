var seg =  game_get_speed(gamespeed_fps); //un segundo segun los fps

switch(estado){

	case estadosnave.canones:

		if (animacion == estadosanimacion.abrircanon){
			if (subimagen < 6)
				subimagen++;
			else{
				animacion = estadosanimacion.sacarcanon;
				subimagen = 0;	
			}
			
		}
		
		if (animacion == estadosanimacion.sacarcanon){
			if (subimagen < 11)
				subimagen++;
			else{
				animacion = estadosanimacion.mantenercanon;
					
				if (alarm[1] == -1) //guardar cañones  a los 4 seg
					alarm[1] = seg*4+1;
			}
		}
		
		if (animacion == estadosanimacion.mantenercanon){
			if (alarm[0] == -1) //disparar cada 1 segundo
				alarm[0] = seg;
		}
		
		if (animacion == estadosanimacion.dispararcanon){
			if (subimagen < 4)
				subimagen++;
			else
				animacion = estadosanimacion.mantenercanon
		}
		
		if (animacion == estadosanimacion.guardarcanon){
			if (subimagen > 0)
				subimagen--;
			else{
				animacion = estadosanimacion.ninguna;
				estado = estadosnave.quieto;
				
			}
		}
		
		
	
	break;
	
}


/////////////          Test 

if (keyboard_check_pressed(ord("1"))){
	estado = estadosnave.canones
	animacion = estadosanimacion.sacarcanon
}


if (keyboard_check_pressed(ord("R"))){
	game_restart()
}