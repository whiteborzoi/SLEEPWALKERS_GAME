function choice_get(choice_id){
	if array_length(global.choice) >= (choice_id+1){
		return (global.choice[choice_id])
	}else{
		return (0);	
	}
}

