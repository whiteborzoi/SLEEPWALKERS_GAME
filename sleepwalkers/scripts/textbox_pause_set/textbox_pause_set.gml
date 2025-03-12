// Устанавливает длительность паузы, когда текстбокс считывает определенные знаки препинания
// 'other_seconds' включает длительность восклицательных и вопросительных знаков

///@param text_pause
///@param period_seconds
///@param comma_seconds
///@param dash_seconds
///@param exclamation_seconds
///@param question_seconds
function textbox_pause_set(pause, period_secs = 0.5, comma_secs = 0.25, dash_seconds = 0.25, exclamation_secs = 0.5, question_secs = 0.5){
	global.textbox_pause = pause
	global.pause_period = period_secs
	global.pause_comma = comma_secs
	global.pause_dash = dash_seconds
	global.pause_exclamation = exclamation_secs
	global.pause_question = question_secs
}

