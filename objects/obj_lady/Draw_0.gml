/// @description new code
draw_self();
if instance_exists(obj_midi_clock) {
        if obj_midi_clock.div_4_trigger = true {
            image_index+=0.5 * global.delta_multiplier 
            frame=0
            //loopover
            if type=maxtypes {
                type=0
            } else {
                type++
            }
        }
    
    if frame<maxframes {
        frame+=0.15 * global.delta_multiplier 
    }
}

if(drawgirl)
	draw_sprite_ext(sprite[type],frame,x,y,image_xscale,image_yscale,0,image_blend,1)