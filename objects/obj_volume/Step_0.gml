volumeObj = obj_stats.volume

if(volumeObj == 0)
	volumeSpr = spr_dudeicon
else
	volumeSpr = spr_momgotmcdonalds
	
if keyboard_check_pressed(ord(2)) || keyboard_check_pressed(ord(1))
	volumeSprCountdown = volumeSprCountdownMax
	
volumeSprCountdown--

if(volumeSprCountdown <= 0)
	alpha -= 0.1

if(alpha <= 0)
	instance_destroy()