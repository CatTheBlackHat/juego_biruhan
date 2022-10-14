enum estadosnave{
	canones,
	lanzarmisiles,
	rayocentro,
	crearnave,
	bajar,
	subir,
	quieto
}
estado = estadosnave.quieto;


enum estadosanimacion{
	ninguna,
	
	//constantes para el estado cañones
	abrircanon,
	sacarcanon,
	mantenercanon,
	dispararcanon,
	guardarcanon,
	
	//constantes para el estado lanzarmisiles
	abrircompuertas,
	lanzarmisil,
	cerrarcompuertas,
	
	//constantes para el estado rayocentro
	sacarrayo,
	preparandorayo,
	disparandorayo,
	guardarrayo,
	
}

animacion = estadosanimacion.ninguna; //determina cuando animar las armas 
subimagen = 0;

depth = 0;