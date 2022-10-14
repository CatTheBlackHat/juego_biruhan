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
				subimagen = 0;
				
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
			else{
				animacion = estadosanimacion.mantenercanon
				subimagen = 0;
			}
		}
		
		if (animacion == estadosanimacion.guardarcanon){
			if (subimagen > 0)
				subimagen--;
			else{
				animacion = estadosanimacion.ninguna;
				estado = estadosnave.quieto;
				subimagen = 0;
			}
		}
		
	break;
	
	
	case estadosnave.lanzarmisiles:
	
		if (animacion == estadosanimacion.abrircompuertas){
			if (subimagen < 6)
				subimagen++;
			else{
				animacion = estadosanimacion.lanzarmisil
				subimagen = 0;
			}
				
		}
	
		if (animacion == estadosanimacion.lanzarmisil){
			if (subimagen < 3)
				subimagen++;
			else{
				if (alarm[2] == -1)
					alarm[2] = seg*.3 //lanzar los misiles
			}
				
		}
		
		if (animacion == estadosanimacion.cerrarcompuertas){
			if (subimagen > 0)
				subimagen--;
			else{
				animacion = estadosanimacion.ninguna
				estado = estadosnave.quieto;	
				subimagen = 0;
			}
				
		}
		
		
	break;
	
	case estadosnave.rayocentro:
	
		if (animacion == estadosanimacion.sacarrayo){
			if (subimagen < 11)
				subimagen++;
			else{
				animacion = estadosanimacion.preparandorayo;
				subimagen = 0;
			}
		}
		
		
		if (animacion == estadosanimacion.disparandorayo){
			
			if (!instance_exists(obj_rayo))
				instance_create_layer(x+58, y+110, "Instances", obj_rayo)
			
			if (alarm[3] == -1) //parar rayo
				alarm[3] = seg * 1;
			
			if (subimagen < 3) //hacer ciclo de animacion
				subimagen++;
			else
				subimagen = 0;
			
		}
		
		if (animacion == estadosanimacion.preparandorayo){
			if (subimagen < 5)
				subimagen++;
			else{
				animacion = estadosanimacion.disparandorayo;
				subimagen = 0;
			}
		}
		
		
		if (animacion == estadosanimacion.guardarrayo){
			if (subimagen > 0)
				subimagen--;
			else{
				animacion = estadosanimacion.ninguna;
				estado = estadosnave.quieto;
				subimagen = 0;
			}
		}
		
		
	break;
	
}


/////////////          Test 

if (keyboard_check_pressed(ord("1"))){
	estado = estadosnave.canones
	animacion = estadosanimacion.sacarcanon
}


if (keyboard_check_pressed(ord("2"))){
	estado = estadosnave.lanzarmisiles
	animacion = estadosanimacion.abrircompuertas
}


if (keyboard_check_pressed(ord("3"))){
	estado = estadosnave.rayocentro
	animacion = estadosanimacion.sacarrayo
}



if (keyboard_check_pressed(ord("R"))){
	game_restart()
}