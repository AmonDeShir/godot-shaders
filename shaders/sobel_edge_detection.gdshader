shader_type canvas_item;

const mat3 sobel_x = mat3(
	vec3(0, 0, 0),
	vec3(0, 1, 0),
	vec3(0, 0, 0)
);

const mat3 sobel_y = mat3(
	vec3(1, 2, 1),
	vec3(0, 0, 0),
	vec3(-1, -2, -1)
);

vec3 convolution(mat3 kernel, sampler2D image, vec2 uv, vec2 pixel_size) {
	vec3 sum;
	
	sum += texture(image, uv + vec2(-pixel_size.x, -pixel_size.y)).xyz * kernel[0][0];
	sum += texture(image, uv + vec2(0, -pixel_size.y)).xyz * kernel[0][1];
	sum += texture(image, uv + vec2(pixel_size.x, -pixel_size.y)).xyz * kernel[0][2];
	sum += texture(image, uv + vec2(-pixel_size.x, 0)).xyz * kernel[1][0];
	sum += texture(image, uv + vec2(0, 0)).xyz * kernel[1][1];
	sum += texture(image, uv + vec2(pixel_size.x, 0)).xyz * kernel[1][2];
	sum += texture(image, uv + vec2(-pixel_size.x, pixel_size.y)).xyz * kernel[2][0];
	sum += texture(image, uv + vec2(0, pixel_size.y)).xyz * kernel[2][1];
	sum += texture(image, uv + vec2(pixel_size.x, pixel_size.y)).xyz * kernel[2][2];
	
	return sum;
}

void fragment() {
    COLOR.xyz = convolution(sobel_x, TEXTURE, UV, SCREEN_PIXEL_SIZE).xyz;
}
