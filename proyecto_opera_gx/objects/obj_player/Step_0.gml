controles(10) //controlar al jugador


switch(estado){
	
	case estadoplayer.cayendo:
		gravedad(2, 30)
	break;
	
	case estadoplayer.pared:
		pegar_pared(3)
	break;
}


cambiar_sprite() //cambiar animacion segun estado

if (der) //voltear sprite segun la direccion
	image_xscale = 1
else
	image_xscale = -1


