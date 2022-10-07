
switch(estado){
	
	case estadoplayer.cayendo:
		gravedad(2, 30)
	break;
	
	case estadoplayer.pared:
		pegar_pared(3)
	break;
}


cambiar_sprite()

if (der)
	image_xscale = 1
else
	image_xscale = -1

controles(10)

// test 
//if (keyboard_check_pressed(vk_space)){
	
//	if (estado == estadoplayer.cayendo)
//		estado = estadoplayer.pared;
//	else
//		estado = estadoplayer.cayendo
//}