if (estado != estadosplayer.lastimado) //si el player esta lastima no se mueve
	controles(15) //controlar al jugador


switch(estado){
	
	case estadosplayer.cayendo:
	case estadosplayer.lastimado:
		gravedad(2, 30)
	break;
	
	case estadosplayer.pared:
		pegar_pared(global.velocidad_subida)
	break;
	
}


cambiar_sprite() //cambiar animacion segun estado

if (der) //voltear sprite segun la direccion
	image_xscale = 1
else
	image_xscale = -1


