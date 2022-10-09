//si queda trabado dentro de la pared, sacarlo
if (place_meeting(x,y, other)){
	if (der)
		move_outside_all(180, 30)	
	else
		move_outside_all(0, 30)
}


//cuando el player llega saltando
if (estado == estadoplayer.cayendo){
	estado = estadoplayer.pared; //pegar a la pared
	der = !der; //si venía desde la derecha, queda a la izquierda y viceversa
	hspeed = 0;
}
