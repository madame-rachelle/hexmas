uniform float timer;

vec4 ProcessTexel()
{
	vec2 uv = vTexCoord.st*2.0;
	uv.y -= timer*3.234;
	vec3 col = vec3(0,0,0);
	uv.y -= timer*0.02124;
	uv.y += sin(uv.x*0.434+timer)*0.276;
	col += getTexel(uv).rgb;
	uv.y -= timer*0.03533;
	uv.y += cos(uv.y*0.235+timer)*0.234;
	col += getTexel(uv).rgb;
	uv.y -= timer*0.01232;
	uv.y += cos(uv.y*0.264+timer)*0.246;
	col += getTexel(uv).rgb;
	uv.y -= timer*0.06523;
	uv.y += sin(uv.x*0.845+timer)*0.283;
	col += getTexel(uv).rgb;
	col *= 0.25;
	col = mix(col,vec3(0.5,1.0,0.5),pow(min(abs(vTexCoord.t+0.5)*2.5,1.0),2.0));
	return vec4(col,1.0);
}
