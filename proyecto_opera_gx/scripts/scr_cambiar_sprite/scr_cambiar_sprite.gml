// /@function     cambiar_sprite()
///@description   cambia el sprite segun el estado del player

function cambiar_sprite(){
	
	switch (estado){
		
		case estadoplayer.pared:
			sprite_index = spr_player_pared;
		break;
		
		case estadoplayer.cayendo:
			sprite_index = spr_player_saltando;
		break;
		
		
	}

}