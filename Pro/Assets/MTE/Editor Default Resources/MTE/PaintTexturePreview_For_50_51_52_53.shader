﻿// UNITY_SHADER_NO_UPGRADE
Shader "Hidden/MTE/PaintTexturePreview_For_50_51_52_53"
{
	Properties
	{
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_NormalTex ("Normalmap", 2D) = "bump" {}
		_MaskTex ("Mask (RGB) Trans (A)", 2D) = "white" {}
	}

	SubShader
	{
		Tags { "Queue"="Transparent" }
		Blend SrcAlpha OneMinusSrcAlpha

		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Lambert vertex:vert alpha:blend

		struct Input
		{
			float4 pos  : POSITION;
			float4 tex0 : TEXCOORD0;
			float4 tex1 : TEXCOORD1;
		};

		sampler2D _MainTex;
		sampler2D _MaskTex;
		sampler2D _NormalTex;

		float4x4 _Projector;
		float4 _MainTex_ST;

		void vert(inout appdata_full v, out Input o)
		{
			UNITY_INITIALIZE_OUTPUT(Input, o);
			o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
			o.tex0.xy = TRANSFORM_TEX(v.texcoord, _MainTex);
			o.tex1 = mul(_Projector, v.vertex);
		}

		void surf(Input IN, inout SurfaceOutput o)
		{
			float4 color = tex2D(_MainTex, IN.tex0.xy);
			float4 mask = tex2Dproj(_MaskTex, UNITY_PROJ_COORD(IN.tex1));
			o.Albedo = color.rgb;
			o.Alpha = mask.a;
			o.Normal = UnpackNormal(tex2D(_NormalTex, IN.tex0.xy));
		}

		ENDCG
	}
	FallBack "Diffuse"
}
