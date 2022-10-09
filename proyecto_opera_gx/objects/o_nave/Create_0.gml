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
	abrircanon,
	sacarcanon,
	mantenercanon,
	dispararcanon,
	guardarcanon
}

animacion = estadosanimacion.ninguna; //determina cuando animar los cañones 
subimagen = 0;