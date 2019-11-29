#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

// Pulsating Ellipse
void main(){
    vec2 uv=gl_FragCoord.xy/u_resolution.xy;
    
    float dist=distance(uv,vec2(.5));
    dist-=(sin(u_time));
    
    vec2 val=step(uv,vec2(.5));
    
    float color1=1.-fract(dist+sin(u_time));
    float color2=1.-fract(dist+cos(u_time));
    float color3=1.-fract(dist+tan(u_time));
    
    vec3 final=vec3(color1,color2,color3);
    
    gl_FragColor=vec4(final,1.);
}
