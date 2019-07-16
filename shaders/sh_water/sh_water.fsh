//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;
uniform vec2 texel;

const float speed = 0.01;
const float xFreq = 20.0;
const float xSize = 5.0;

const float yFreq = 20.0;
const float ySize = 10.0;

void main()
{
	//x wave
	float xWave = sin(time*speed + v_vTexcoord.y*xFreq) * (xSize*texel.x) * v_vTexcoord.y;
	//y wave
	float yWave = sin(time*speed + v_vTexcoord.y*yFreq) * (ySize*texel.y) * v_vTexcoord.y;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + vec2(xWave, yWave));
}
