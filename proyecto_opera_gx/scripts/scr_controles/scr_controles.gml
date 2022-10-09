///@function		controles()
///@description		controla el comportamiento del personaje al hacer click
///@param	pot_salto  potencia del salto

function controles(pot_salto){
	
	if (mouse_check_button_pressed(mb_left)){ //si se mantiene click
		if (estado == estadoplayer.pared) //y está en una pared
			estado = estadoplayer.preparado //preparar el salto
	}
	
	
	if (mouse_check_button_released(mb_left)){ //cuando se hace click
		if (estado == estadoplayer.preparado){ 
			
			if (der)//si esta mirando hacia la derecha
				saltar(pot_salto);	//saltar hacia la derecha
			else
				saltar(-pot_salto)
				
				
			estado = estadoplayer.cayendo; //aplicar gravedad
				
		}
		
	}
		
		
}


function saltar(pot_salto){
	hspeed = pot_salto;
}