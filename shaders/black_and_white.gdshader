shader_type canvas_item;

void fragment() {
	COLOR = texture(TEXTURE, UV);
	
	float grey = (COLOR.r + COLOR.g + COLOR.b) / 3.0;
	
	COLOR.rgb = vec3(step(0.2, grey));
}
