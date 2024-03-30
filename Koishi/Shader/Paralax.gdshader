shader_type canvas_item;

uniform vec2 direction = vec2(0.5,0.5);
uniform float speed_scale = 0.1;

void fragment() {
	// Called for every pixel the material is visible on.
	vec2 move = direction * TIME * speed_scale;
	COLOR = texture(TEXTURE, UV + move);
}

