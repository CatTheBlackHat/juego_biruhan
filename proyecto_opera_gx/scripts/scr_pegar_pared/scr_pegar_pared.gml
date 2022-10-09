///@function		pegado_pared()
///@description		aplica velocidad vertical al estar pegado en la pared
///@param	vel_v	cantidad de velocidad de subida


function pegar_pared(vel_v){

	vspeed = -vel_v
		
	if (gravity != 0) //anular la gravedad
		gravity = 0;
		
}