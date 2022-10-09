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
		
		case estadoplayer.preparado:
			sprite_index = spr_player_preparado;
		break;
		
		case estadoplayer.lastimado:
			sprite_index = spr_player_lastimado;
		break;
		
	}

}