//
// Bruh im so bad yet in shaders :(
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float brightness;

void main()
{
	vec4 base_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
	gl_FragColor = vec4(base_color.rgb + brightness, base_color.a);
	//gl_FragColor = base_color;
}
