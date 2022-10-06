///@function		pegado_pared()
///@description		aplica velocidad vertical al estar pegado en la pared
///@param	vel_v	cantidad de velocidad de subida

function pegar_pared(vel_v){
	
	if (instance_exists(obj_player))
		obj_player.vspeed = -vel_v
		
}