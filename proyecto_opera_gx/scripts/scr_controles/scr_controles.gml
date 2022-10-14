///@function		controles()
///@description		controla el comportamiento del personaje al hacer click
///@param	pot_salto  potencia del salto

function controles(pot_salto){
	
	if (mouse_check_button_pressed(mb_left)){ //si se mantiene click
		if (estado == estadosplayer.pared) //y está en una pared
			estado = estadosplayer.preparado //preparar el salto
	}
	
	
	if (mouse_check_button_released(mb_left)){ //cuando se hace click
		if (estado == estadosplayer.preparado){ 
			
			if (der)//si esta mirando hacia la derecha
				saltar(pot_salto);	//saltar hacia la derecha
			else
				saltar(-pot_salto)
				
			//reproducir sonido de salto
			audio_play_sound(choose(salto_1, salto_2, salto_3),1, false )
				
			estado = estadosplayer.cayendo; //aplicar gravedad
				
		}
		
	}
		
		
}


function saltar(pot_salto){
	hspeed = pot_salto;
}