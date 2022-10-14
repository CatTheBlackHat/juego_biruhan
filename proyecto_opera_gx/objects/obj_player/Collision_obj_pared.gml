//si queda trabado dentro de la pared, sacarlo
if (place_meeting(x,y, other)){
	if (der)
		move_outside_all(180, 30)	
	else
		move_outside_all(0, 30)
}


//cuando el player llega saltando
if (estado == estadosplayer.cayendo){
	estado = estadosplayer.pared; //pegar a la pared
	der = !der; //si venía desde la derecha, queda a la izquierda y viceversa
	hspeed = 0;
	
	//reproducir sonido de aterizaje
	audio_play_sound(choose(aterrizaje_1, aterrizaje_2, aterrizaje_3),1, false )
}
