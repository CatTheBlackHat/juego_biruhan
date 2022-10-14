if (abrir){
	if (image_index < 4)
		image_index++;
	else{
		image_index = 4;
		
		if (alarm[0] == -1)
			alarm[0] = game_get_speed(gamespeed_fps)*1;
	}
	
}
else{ //destruir cuando se cierre el rayo
	if (image_index > 0)
		image_index--;
	else
		instance_destroy()
	
}


image_yscale += 2;