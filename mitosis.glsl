#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;
uniform vec2 u_mouse;
uniform vec2 u_resolution;

// Mitosis
void main( void ) {
	vec2 position = ( gl_FragCoord.xy / u_resolution.xy );
	float t = abs(u_time/2.0);
	float cell1 = clamp(abs(cos(t)),-1.0,1.0);
	float cell2 = 1.0 - cell1;
	float pct = distance(position,vec2(cell1)) * distance(position,vec2(cell2)) ;
	vec3 color = vec3( pct);
	color +=vec3(0.2,0.7,0.2);
	gl_FragColor = vec4( color, 1.0 );
}
