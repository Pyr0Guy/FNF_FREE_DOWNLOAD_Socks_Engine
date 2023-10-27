//bopping

if instance_exists(obj_midi_clock) {
if (obj_midi_clock.div_4_trigger){
	frame=0
	bop=true
}
if bop == true{
	if frame<framenumbs
		frame+= global.delta_multiplier * 0.15 
	else 
		bop=false
	
	}
	image_index=frame
}