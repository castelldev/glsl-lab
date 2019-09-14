#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;
uniform vec2 u_mouse;
uniform vec2 u_resolution;

// Spatial ambiance
void main(){
    vec2 position=(gl_FragCoord.xy/u_resolution.xy);
    float pct=distance(position,vec2(u_mouse));
    pct*=sin(u_time);
    pct=smoothstep(pct,pct+.1,.5);
    gl_FragColor=vec4(pct,0.,1.,1.);
}