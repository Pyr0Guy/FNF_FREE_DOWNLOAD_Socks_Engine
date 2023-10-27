obj_charting.grid[# row, spif] = 0
if(array_contains(obj_charting.id_list, id)){
	var pos = array_get_index(obj_charting.id_list, id)
	array_delete(obj_charting.id_list, pos, 1)
}