///@function		controles()
///@description		controla el comportamiento del personaje al hacer click
///@param	pot_salto  potencia del salto

function controles(pot_salto){
	
	if (mouse_check_button_pressed(mb_left)){ //cuando se hace click
		if (obj_player.estado == estadoplayer.pared){ //si esta pegado a una pared
			
			
			if (obj_player.der)//si esta mirando hacia la derecha
				saltar(pot_salto);	//saltar hacia la derecha
			else
				saltar(-pot_salto)
				
				
			obj_player.estado = estadoplayer.cayendo; //aplicar gravedad
				
		}
		
	}
		
		
}


function saltar(pot_salto){
	hspeed = pot_salto;
}