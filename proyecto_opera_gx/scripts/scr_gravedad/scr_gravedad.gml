///@function		scr_gravedad(cant_grav, limite_v)
///@description		aplica la gravedad al personaje para que caiga
///@param			cant_grav cantidad de gravedad aplicada(0 a 1)
///@param			limite_v limite de la innercia vertical provocada por la gravedad

function gravedad(cant_grav, limite_v){
	gravity = cant_grav;
	
	if (vspeed > limite_v)
		vspeed = limite_v;
}