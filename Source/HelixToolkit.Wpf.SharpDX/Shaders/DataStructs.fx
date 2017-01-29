#ifndef DATASTRUCTS_FX
#define DATASTRUCTS_FX
//--------------------------------------------------------------------------------------
// VERTEX AND PIXEL SHADER INPUTS
//--------------------------------------------------------------------------------------
struct VSInput
{
	float4 p			: POSITION;
	float4 c			: COLOR;
	float2 t			: TEXCOORD; 
	float3 n			: NORMAL;  
	float3 t1			: TANGENT;
	float3 t2			: BINORMAL;

	float4 mr0			: TEXCOORD1;
	float4 mr1			: TEXCOORD2;
	float4 mr2			: TEXCOORD3;
	float4 mr3			: TEXCOORD4;
};

//--------------------------------------------------------------------------------------
// VERTEX AND PIXEL SHADER INPUTS
//--------------------------------------------------------------------------------------
struct VSInstancingInput
{
	float4 p			: POSITION;
	float4 c			: COLOR;
	float2 t			: TEXCOORD;
	float3 n			: NORMAL;
	float3 t1			: TANGENT;
	float3 t2			: BINORMAL;

	float4 mr0			: TEXCOORD1;
	float4 mr1			: TEXCOORD2;
	float4 mr2			: TEXCOORD3;
	float4 mr3			: TEXCOORD4;

	float4 diffuseC		: COLOR1;
	float4 ambientC		: COLOR2;
	float4 emissiveC	: COLOR3;
	float2 tOffset		: TEXCOORD5;
};

//--------------------------------------------------------------------------------------
struct PSInput
{
	float4 p			: SV_POSITION;  
	float4 wp			: POSITION0;
	float4 sp			: TEXCOORD1;
	float3 n			: NORMAL;	    // normal
	float2 t			: TEXCOORD0;	// tex coord	
	float3 t1			: TANGENT;		// tangent
	float3 t2			: BINORMAL;		// bi-tangent	
	float4 c			: COLOR;		// solid color (for debug)
	float4 c2			: COLOR1;
};

//--------------------------------------------------------------------------------------
// CUBE-MAP funcs
//--------------------------------------------------------------------------------------
struct PSInputCube
{
	float4 p  : SV_POSITION;
	float3 t  : TEXCOORD;
	float4 c  : COLOR;
};


//--------------------------------------------------------------------------------------
// VERTEX AND PIXEL SHADER INPUTS
//--------------------------------------------------------------------------------------
struct VSInputLS
{
	float4 p	: POSITION;
	float4 c	: COLOR;

	float4 mr0	: TEXCOORD1;
	float4 mr1	: TEXCOORD2;
	float4 mr2	: TEXCOORD3;
	float4 mr3	: TEXCOORD4;
};

struct GSInputLS
{
	float4 p	: POSITION;
	float4 c	: COLOR;
};

struct PSInputLS
{
	float4 p	: SV_POSITION;
	noperspective
		float3 t	: TEXCOORD;
	float4 c	: COLOR;
};

//--------------------------------------------------------------------------------------
// Line VERTEX AND PIXEL SHADER INPUTS
//--------------------------------------------------------------------------------------
struct VSInputBT
{
	float4 p	: POSITION;
	float4 c	: COLOR;
	float4 t	: TEXCOORD0; // t.xy = texture coords, t.zw = offset in pixels.
};

struct PSInputBT
{
	float4 p	: SV_POSITION;
	float4 c	: COLOR;
	float2 t	: TEXCOORD;
};

//--------------------------------------------------------------------------------------
// Point VERTEX AND PIXEL SHADER INPUTS
//--------------------------------------------------------------------------------------
struct VSInputPS
{
	float4 p	: POSITION;
	float4 c	: COLOR;
};

struct GSInputPS
{
	float4 p	: POSITION;
	float4 c	: COLOR;
};

struct PSInputPS
{
	float4 p	: SV_POSITION;
	noperspective
		float3 t	: TEXCOORD;
	float4 c	: COLOR;
};
#endif