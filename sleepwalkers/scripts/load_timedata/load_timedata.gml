function load_timedata(filename){
	
	var str_final = ""
	
	if file_exists(filename){
		//
		ini_open(filename);
		
		//time data
		var mins = string(ini_read_real("Save","playtime_min", 0));
		var hours = string(ini_read_real("Save","playtime_hour", 0));
		if string_length(mins) == 1{mins = "0"+mins}
		str_final = hours+":"+mins
		
		ini_close();
	}
	
	return (str_final);
}
