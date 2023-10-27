function scr_skinswapdude(argument0) {
	//variables
	var sh_handle_hat = shader_get_uniform(shader_colorswap,"colorReplaceHat");
	var sh_handle_skin = shader_get_uniform(shader_colorswap,"colorReplaceSkin");
	var sh_handle_hair = shader_get_uniform(shader_colorswap,"colorReplaceHair");

	var sh_handle_shirt = shader_get_uniform(shader_colorswap,"colorReplaceShirt");
	var sh_handle_stripe = shader_get_uniform(shader_colorswap,"colorReplaceStripe");

	var sh_handle_pants = shader_get_uniform(shader_colorswap,"colorReplacePants");
	var sh_handle_shoes = shader_get_uniform(shader_colorswap,"colorReplaceShoes");

	//image hue
	var sh_handle_hue = shader_get_uniform(shader_colorswap,"hue");

	//shader
	shader_set(shader_colorswap)
	//leave these values as 1 if you do not want a hue
	var huered = 1
	var huegreen = 1
	var hueblue = 1

	var huecolor = argument0

	//make sure your values for red green and blue are between 0 and 1.
	huered = color_get_red(huecolor)/255
	hueblue = color_get_blue(huecolor)/255
	huegreen = color_get_green(huecolor)/255


	shader_set_uniform_f(sh_handle_hue,huered,huegreen,hueblue)

	shader_set_uniform_f(sh_handle_hat,obj_stats.colorHat[0]/255,obj_stats.colorHat[1]/255,obj_stats.colorHat[2]/255)
	shader_set_uniform_f(sh_handle_skin,obj_stats.colorSkin[0]/255,obj_stats.colorSkin[1]/255,obj_stats.colorSkin[2]/255)
	shader_set_uniform_f(sh_handle_hair,obj_stats.colorHair[0]/255,obj_stats.colorHair[1]/255,obj_stats.colorHair[2]/255)
    
	shader_set_uniform_f(sh_handle_shirt,obj_stats.colorShirt[0]/255,obj_stats.colorShirt[1]/255,obj_stats.colorShirt[2]/255)
	shader_set_uniform_f(sh_handle_stripe,obj_stats.colorStripe[0]/255,obj_stats.colorStripe[1]/255,obj_stats.colorStripe[2]/255)
    
	shader_set_uniform_f(sh_handle_pants,obj_stats.colorPants[0]/255,obj_stats.colorPants[1]/255,obj_stats.colorPants[2]/255)
	shader_set_uniform_f(sh_handle_shoes,obj_stats.colorShoes[0]/255,obj_stats.colorShoes[1]/255,obj_stats.colorShoes[2]/255)



}
