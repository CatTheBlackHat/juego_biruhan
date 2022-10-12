
enum estadosplayer{
	preparado=0,
	cayendo=1,
	pared=2,
	lastimado=3
	
}

estado = estadosplayer.pared; //determina la accion que está haciendo el player
der = true; //direccion a donde mira (booleano) 

move_contact_all(180, 100) //pegar a la pared inicialmente


global.velocidad_subida = 2;