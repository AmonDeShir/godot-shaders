shader_type canvas_item;

uniform float brightness = 1.0;
uniform float contrast = 1.0;
uniform float saturation = 1.0;
 
void fragment() {
	vec3 color = texture(TEXTURE, UV).rgb;
	color = mix(vec3(0.0), color, brightness);
	color = mix(vec3(0.5), color, contrast);

	
	float grey = (color.r + color.b + color.g) / 3.0;
	COLOR.rgb = mix(vec3(grey), color, saturation);
}
