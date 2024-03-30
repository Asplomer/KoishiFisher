shader_type canvas_item;

uniform vec4 color : source_color;
/*void vertex() {
	// Called for every vertex the material is visible on.
}*/

void fragment() {
	vec4 pixelColor = texture(TEXTURE,UV);
	
	float brightness = (pixelColor.r + pixelColor.g + pixelColor.b) /3.0;
	vec4 greyScale = vec4(brightness, brightness, brightness, pixelColor.a);
	//COLOR = greyScale * color;
	COLOR.rgb = COLOR.rgb;
	// Called for every pixel the material is visible on.
}
