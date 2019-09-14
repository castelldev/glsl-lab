#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;
uniform vec2 u_resolution;

// Mitosis
void main(){
	vec2 position=(gl_FragCoord.xy/u_resolution.xy);
	float t=abs(u_time/2.);
	float cell1=clamp(abs(cos(t)),-1.,1.);
	float cell2=1.-cell1;
	float pct=distance(position,vec2(cell1))*distance(position,vec2(cell2));
	vec3 color=vec3(pct);
	color+=vec3(.2,.7,.2);
	gl_FragColor=vec4(color,1.);
}
