shader_type canvas_item;

const vec3 colorB = vec3(1.0, 0.5, 0.3);

void fragment() {
	vec3 colorA = texture(TEXTURE, UV).rgb;
	float percent = 0.5 + sin(TIME) / 2.0;
	
	vec3 color = mix(colorA, colorB, percent);
	COLOR = vec4(color, 1.0);
}
