// необходимо использовать один раз и ТОЛЬКО один раз за событие, чтобы продвинуть систему
function event_end() {
	global.event_count += 1;
	global.event_finished = false;
}
