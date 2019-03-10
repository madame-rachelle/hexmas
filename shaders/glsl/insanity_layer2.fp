vec2 calcdist( vec2 duv )
{
	vec2 uv = vec2(0.0);
	vec2 dist = 2.0*texture(warptex,duv*0.3).xy-1.0;
	dist.x *= abs(mod(dist.y+timer*1.34536,4.0)-2.0)-1.0;
	uv.x += dist.x*0.04*dfact;
	dist = 2.0*texture(warptex,(duv+uv)*0.6).xy-1.0;
	dist.y *= abs(mod(dist.x+timer*1.45363,4.0)-2.0)-1.0;
	uv.y -= dist.y*0.03*dfact;
	return uv;
}

void main()
{
	vec2 uv = TexCoord+calcdist(TexCoord-vec2(0.0,timer*0.2));
	float p = distance(uv,vec2(0.5));
	uv = (uv-0.5)*(1.0-p*tun)*(1.0+tun*0.5-dfact*0.07)+0.5;
	vec4 res = texture(InputTexture,uv);
	res.rgb *= max(0.0,1.0-pow(p,3.0)*tun*4.0);
	res.rgb = pow(max(res.rgb*(1.0-tun*0.2),0.0),vec3(1.0+tun*2.0));
	FragColor = vec4(res.rgb,1.0);
}
