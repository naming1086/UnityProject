// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: CameraInfo.prot

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;


public class CameraInfo : Table.Binary, Table.IKey
{
	#region vector3
	public class vector3 : Table.Binary
	{
		Int32 m_x;
		Int32 m_y;
		Int32 m_z;
		
		public Int32 x
		{
			get { return m_x; }
		}
		
		public Int32 y
		{
			get { return m_y; }
		}
		
		public Int32 z
		{
			get { return m_z; }
		}
		
		public override int Load(byte[] buffer, int index)
		{
			Table.Loader loader = new Table.Loader(ref buffer, index);
			loader.Load(ref m_x).Load(ref m_y).Load(ref m_z);
			return loader.Size;
		}
	}
	#endregion
	
	#region color
	public class color : Table.Binary
	{
		Int32 m_x;
		Int32 m_y;
		Int32 m_z;
		
		public Int32 x
		{
			get { return m_x; }
		}
		
		public Int32 y
		{
			get { return m_y; }
		}
		
		public Int32 z
		{
			get { return m_z; }
		}
		
		public override int Load(byte[] buffer, int index)
		{
			Table.Loader loader = new Table.Loader(ref buffer, index);
			loader.Load(ref m_x).Load(ref m_y).Load(ref m_z);
			return loader.Size;
		}
	}
	#endregion
	
	#region fastMobileBloom
	public class fastMobileBloom : Table.Binary
	{
		Byte   m_enabled;
		double m_threshold;
		double m_intensity;
		double m_blur_size;
		Byte   m_blur_iterations;
		
		public Byte enabled
		{
			get { return m_enabled; }
		}
		
		public double threshold
		{
			get { return m_threshold; }
		}
		
		public double intensity
		{
			get { return m_intensity; }
		}
		
		public double blurSize
		{
			get { return m_blur_size; }
		}
		
		public Byte blurIterations
		{
			get { return m_blur_iterations; }
		}
		
		public override int Load(byte[] buffer, int index)
		{
			Table.Loader loader = new Table.Loader(ref buffer, index);
			loader.Load(ref m_enabled).Load(ref m_threshold).Load(ref m_intensity).Load(ref m_blur_size).Load(ref m_blur_iterations);
			return loader.Size;
		}
	}
	#endregion
	
	#region amplifyColorEffect
	public class amplifyColorEffect : Table.Binary
	{
		Byte         m_enabled;
		double       m_blend_amount;
		Table.String m_lut_texture;
		Table.String m_lut_blend_texture;
		
		public Byte enabled
		{
			get { return m_enabled; }
		}
		
		public double blendAmount
		{
			get { return m_blend_amount; }
		}
		
		public string lutTexture
		{
			get { return m_lut_texture; }
		}
		
		public string lutBlendTexture
		{
			get { return m_lut_blend_texture; }
		}
		
		public override int Load(byte[] buffer, int index)
		{
			Table.Loader loader = new Table.Loader(ref buffer, index);
			loader.Load(ref m_enabled).Load(ref m_blend_amount).Load(ref m_lut_texture).Load(ref m_lut_blend_texture);
			return loader.Size;
		}
	}
	#endregion
	
	#region dynamicFog
	public class dynamicFog : Table.Binary
	{
		Byte   m_enabled;
		Byte   m_effect_type;
		double m_alpha;
		double m_noise_strength;
		double m_distance;
		double m_distance_fall_off;
		double m_max_distance;
		double m_max_distance_fall_off;
		double m_height;
		double m_height_fall_off;
		double m_baseline_height;
		double m_clip_under_baseline;
		Byte   m_turbulence;
		double m_speed;
		color  m_color;
		color  m_color_II;
		
		public Byte enabled
		{
			get { return m_enabled; }
		}
		
		public Byte effectType
		{
			get { return m_effect_type; }
		}
		
		public double alpha
		{
			get { return m_alpha; }
		}
		
		public double noiseStrength
		{
			get { return m_noise_strength; }
		}
		
		public double distance
		{
			get { return m_distance; }
		}
		
		public double distanceFallOff
		{
			get { return m_distance_fall_off; }
		}
		
		public double maxDistance
		{
			get { return m_max_distance; }
		}
		
		public double maxDistanceFallOff
		{
			get { return m_max_distance_fall_off; }
		}
		
		public double height
		{
			get { return m_height; }
		}
		
		public double heightFallOff
		{
			get { return m_height_fall_off; }
		}
		
		public double baselineHeight
		{
			get { return m_baseline_height; }
		}
		
		public double clipUnderBaseline
		{
			get { return m_clip_under_baseline; }
		}
		
		public Byte turbulence
		{
			get { return m_turbulence; }
		}
		
		public double speed
		{
			get { return m_speed; }
		}
		
		public color color
		{
			get { return m_color; }
		}
		
		public color colorII
		{
			get { return m_color_II; }
		}
		
		public override int Load(byte[] buffer, int index)
		{
			Table.Loader loader = new Table.Loader(ref buffer, index);
			loader.Load(ref m_enabled).Load(ref m_effect_type).Load(ref m_alpha).Load(ref m_noise_strength).Load(ref m_distance).Load(ref m_distance_fall_off).Load(ref m_max_distance).Load(ref m_max_distance_fall_off).Load(ref m_height).Load(ref m_height_fall_off).Load(ref m_baseline_height).Load(ref m_clip_under_baseline).Load(ref m_turbulence).Load(ref m_speed).Load(ref m_color).Load(ref m_color_II);
			return loader.Size;
		}
	}
	#endregion
	
	#region amplifyBloomEffect
	public class amplifyBloomEffect : Table.Binary
	{
		Byte   m_technique;
		Byte   m_sourceDownscale;
		Byte   m_precision;
		double m_range;
		double m_intensity;
		double m_threshold;
		Byte   m_debug;
		Byte   m_showWarnings;
		Byte   m_mipCount;
		Byte   m_upscaleBlurRadius;
		Byte   m_featuresSourceID;
		
		public Byte technique
		{
			get { return m_technique; }
		}
		
		public Byte sourceDownscale
		{
			get { return m_sourceDownscale; }
		}
		
		public Byte precision
		{
			get { return m_precision; }
		}
		
		public double range
		{
			get { return m_range; }
		}
		
		public double intensity
		{
			get { return m_intensity; }
		}
		
		public double threshold
		{
			get { return m_threshold; }
		}
		
		public Byte debug
		{
			get { return m_debug; }
		}
		
		public Byte showWarnings
		{
			get { return m_showWarnings; }
		}
		
		public Byte mipCount
		{
			get { return m_mipCount; }
		}
		
		public Byte upscaleBlurRadius
		{
			get { return m_upscaleBlurRadius; }
		}
		
		public Byte featuresSourceID
		{
			get { return m_featuresSourceID; }
		}
		
		public override int Load(byte[] buffer, int index)
		{
			Table.Loader loader = new Table.Loader(ref buffer, index);
			loader.Load(ref m_technique).Load(ref m_sourceDownscale).Load(ref m_precision).Load(ref m_range).Load(ref m_intensity).Load(ref m_threshold).Load(ref m_debug).Load(ref m_showWarnings).Load(ref m_mipCount).Load(ref m_upscaleBlurRadius).Load(ref m_featuresSourceID);
			return loader.Size;
		}
	}
	#endregion
	
	#region v3s
	public class v3s : Table.Binary
	{
		List<vector3> m_list;
		
		public List<vector3> list
		{
			get { return m_list; }
		}
		
		public override int Load(byte[] buffer, int index)
		{
			Table.Loader loader = new Table.Loader(ref buffer, index);
			loader.Load(ref m_list);
			return loader.Size;
		}
	}
	#endregion
	
	UInt16             m_id;
	Byte               m_focus;
	UInt16             m_fov;
	v3s                m_start;
	v3s                m_euler;
	Int16              m_heightMax;
	Int16              m_heightMin;
	Byte               m_hSlerp;
	Byte               m_ehSlerp;
	Byte               m_xzFactor;
	Byte               m_vSlerp;
	Byte               m_evSlerp;
	Byte               m_vBound;
	fastMobileBloom    m_fast_mobile_bloom_info;
	amplifyColorEffect m_amplify_color_effect_info;
	dynamicFog         m_dynamic_fog_info;
	amplifyBloomEffect m_amplify_bloom_effect_info;
	Table.String       m_sky_box_material;
	Table.String       m_scene_mod_name;
	UInt16             m_near;
	UInt16             m_far;
	Byte               m_type;
	
	public const UInt32 Version = 2056499527;
	
	public UInt64 Key()
	{
		return m_id;
	}
	
	public UInt16 id
	{
		get { return m_id; }
	}
	
	public Byte focus
	{
		get { return m_focus; }
	}
	
	public UInt16 fov
	{
		get { return m_fov; }
	}
	
	public v3s start
	{
		get { return m_start; }
	}
	
	public v3s euler
	{
		get { return m_euler; }
	}
	
	public Int16 heightMax
	{
		get { return m_heightMax; }
	}
	
	public Int16 heightMin
	{
		get { return m_heightMin; }
	}
	
	public Byte hSlerp
	{
		get { return m_hSlerp; }
	}
	
	public Byte ehSlerp
	{
		get { return m_ehSlerp; }
	}
	
	public Byte xzFactor
	{
		get { return m_xzFactor; }
	}
	
	public Byte vSlerp
	{
		get { return m_vSlerp; }
	}
	
	public Byte evSlerp
	{
		get { return m_evSlerp; }
	}
	
	public Byte vBound
	{
		get { return m_vBound; }
	}
	
	public fastMobileBloom fastMobileBloomInfo
	{
		get { return m_fast_mobile_bloom_info; }
	}
	
	public amplifyColorEffect amplifyColorEffectInfo
	{
		get { return m_amplify_color_effect_info; }
	}
	
	public dynamicFog dynamicFogInfo
	{
		get { return m_dynamic_fog_info; }
	}
	
	public amplifyBloomEffect amplifyBloomEffectInfo
	{
		get { return m_amplify_bloom_effect_info; }
	}
	
	public string skyBoxMaterial
	{
		get { return m_sky_box_material; }
	}
	
	public string sceneModName
	{
		get { return m_scene_mod_name; }
	}
	
	public UInt16 near
	{
		get { return m_near; }
	}
	
	public UInt16 far
	{
		get { return m_far; }
	}
	
	public Byte type
	{
		get { return m_type; }
	}
	
	public override int Load(byte[] buffer, int index)
	{
		Table.Loader loader = new Table.Loader(ref buffer, index);
		loader.Load(ref m_id).Load(ref m_focus).Load(ref m_fov).Load(ref m_start).Load(ref m_euler).Load(ref m_heightMax).Load(ref m_heightMin).Load(ref m_hSlerp).Load(ref m_ehSlerp).Load(ref m_xzFactor).Load(ref m_vSlerp).Load(ref m_evSlerp).Load(ref m_vBound).Load(ref m_fast_mobile_bloom_info).Load(ref m_amplify_color_effect_info).Load(ref m_dynamic_fog_info).Load(ref m_amplify_bloom_effect_info).Load(ref m_sky_box_material).Load(ref m_scene_mod_name).Load(ref m_near).Load(ref m_far).Load(ref m_type);
		return loader.Size;
	}
}

// source: X 相机配置表.xls, sheet: Sheet1
public sealed class CameraInfoManager : Table.Manager<CameraInfo>
{
	private static readonly CameraInfoManager ms_instance = new CameraInfoManager();
	
	private CameraInfoManager()
	{
	}
	
	public static CameraInfoManager instance
	{
		get { return ms_instance; }
	}
	
	public string source
	{
		get { return "camerainfo.tbl"; }
	}
	
	public bool Load(string path)
	{
		Register();
		return Load(path, source, CameraInfo.Version);
	}
	
	public CameraInfo Find(UInt16 key)
	{
		return FindInternal(key);
	}
	
	#region new helper
	public static object NewCameraInfo()
	{
		return new CameraInfo();
	}
	public static object NewCameraInfovector3()
	{
		return new CameraInfo.vector3();
	}
	
	public static object NewCameraInfocolor()
	{
		return new CameraInfo.color();
	}
	
	public static object NewCameraInfofastMobileBloom()
	{
		return new CameraInfo.fastMobileBloom();
	}
	
	public static object NewCameraInfoamplifyColorEffect()
	{
		return new CameraInfo.amplifyColorEffect();
	}
	
	public static object NewCameraInfodynamicFog()
	{
		return new CameraInfo.dynamicFog();
	}
	
	public static object NewCameraInfoamplifyBloomEffect()
	{
		return new CameraInfo.amplifyBloomEffect();
	}
	
	public static object NewCameraInfov3s()
	{
		return new CameraInfo.v3s();
	}
	
	private static void Register()
	{
		Table.NewHelper.Clear();
		Table.NewHelper.Register(typeof(CameraInfo), NewCameraInfo);
		Table.NewHelper.Register(typeof(CameraInfo.vector3), NewCameraInfovector3);
		Table.NewHelper.Register(typeof(CameraInfo.color), NewCameraInfocolor);
		Table.NewHelper.Register(typeof(CameraInfo.fastMobileBloom), NewCameraInfofastMobileBloom);
		Table.NewHelper.Register(typeof(CameraInfo.amplifyColorEffect), NewCameraInfoamplifyColorEffect);
		Table.NewHelper.Register(typeof(CameraInfo.dynamicFog), NewCameraInfodynamicFog);
		Table.NewHelper.Register(typeof(CameraInfo.amplifyBloomEffect), NewCameraInfoamplifyBloomEffect);
		Table.NewHelper.Register(typeof(CameraInfo.v3s), NewCameraInfov3s);
	}
	#endregion
}
