if obj_stats.discord=true
	selectArr = [spr_StoryMode, spr_Freeplay, spr_Options, spr_credits, spr_Discord]
else
	selectArr = [spr_StoryMode, spr_Freeplay, spr_Options, spr_credits]
	
yy = 0
len = array_length(selectArr)
sel = 0

del = 0
delAlpha = 0
delSnd = snd_wtfBro
oneMoreDelVar = 0
frame = 0
selection = true