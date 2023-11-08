shader_type canvas_item;

uniform float dist = 0.1;

void fragment() {
	vec3 pixel = texture(TEXTURE, UV).rgb;
	vec3 next = texture(TEXTURE, UV + vec2(SCREEN_PIXEL_SIZE.x, 0.0)).rgb;
	vec3 below = texture(TEXTURE, UV - vec2(0.0, SCREEN_PIXEL_SIZE.y)).rgb;
	
	if (length(pixel - next) > dist || length(pixel - below) > dist) {
		COLOR.rgb = vec3(1.0);
	}
	else {
		COLOR.rgb =  vec3(0.0);
	}
}
