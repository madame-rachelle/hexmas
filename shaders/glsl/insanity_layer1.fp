void main()
{
	vec2 uv = TexCoord;
	vec2 bresl = textureSize(InputTexture,0);
	vec2 sr = vec2(1.0,bresl.y/bresl.x);
	vec4 res = texture(InputTexture,uv);
	vec4 flood = texture(fluidtex,uv*sr+vec2(timer*0.02,timer*0.04));
	res.rgb += flood.rgb*dfact*0.5;
	flood = texture(fluidtex,uv*sr*2+vec2(-timer*0.07,timer*0.13));
	res.rgb += flood.rgb*dfact*0.25;
	FragColor = vec4(res.rgb,1.0);
}
