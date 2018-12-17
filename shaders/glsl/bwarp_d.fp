uniform float timer;

vec4 ProcessTexel()
{
	vec2 uv = vTexCoord.st;
	uv.y -= timer*1.234;
	vec3 col = vec3(0,0,0);
	uv.x -= timer*0.01234;
	uv.y -= timer*0.02124;
	uv.x += sin(uv.x*0.434+timer)*0.276;
	col += getTexel(uv).rgb;
	uv.x -= timer*0.02452;
	uv.y -= timer*0.03533;
	uv.y += cos(uv.y*0.235+timer)*0.234;
	col += getTexel(uv).rgb;
	uv.x -= timer*0.03425;
	uv.y -= timer*0.01232;
	uv.x += cos(uv.y*0.264+timer)*0.246;
	col += getTexel(uv).rgb;
	uv.x -= timer*0.03523;
	uv.y -= timer*0.06523;
	uv.y += sin(uv.x*0.845+timer)*0.283;
	col += getTexel(uv).rgb;
	col *= 0.25;
	return vec4(col,1.0);
}
