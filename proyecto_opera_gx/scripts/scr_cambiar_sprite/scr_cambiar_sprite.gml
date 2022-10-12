// /@function     cambiar_sprite()
///@description   cambia el sprite segun el estado del player

function cambiar_sprite(){
	
	switch (estado){
		
		case estadosplayer.pared:
			sprite_index = spr_player_pared;
		break;
		
		case estadosplayer.cayendo:
			sprite_index = spr_player_saltando;
		break;
		
		case estadosplayer.preparado:
			sprite_index = spr_player_preparado;
		break;
		
		case estadosplayer.lastimado:
			sprite_index = spr_player_lastimado;
		break;
		
	}

}