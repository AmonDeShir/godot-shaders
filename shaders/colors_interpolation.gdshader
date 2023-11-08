shader_type canvas_item;

const vec3 colorA = vec3(0.1, 0.0, 1.0);
const vec3 colorB = vec3(1.0, 0.5, 0.3);

void fragment() {
	vec3 color = vec3(0.0);
	float percent = 0.5 + sin(TIME) / 2.0;
	
	color = mix(colorA, colorB, percent);
	COLOR = vec4(color, 1.0);
}
