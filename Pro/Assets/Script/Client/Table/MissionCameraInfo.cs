// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: MissionCameraInfo.prot

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;


public class MissionCameraInfo : Table.Binary, Table.IKey
{
	UInt32 m_index;
	UInt32 m_miss_id;
	UInt32 m_scene_id;
	UInt32 m_camera_id;
	UInt32 m_time;
	
	public const UInt32 Version = 4140575921;
	
	public UInt64 Key()
	{
		return m_index;
	}
	
	public UInt32 index
	{
		get { return m_index; }
	}
	
	public UInt32 missId
	{
		get { return m_miss_id; }
	}
	
	public UInt32 sceneId
	{
		get { return m_scene_id; }
	}
	
	public UInt32 cameraId
	{
		get { return m_camera_id; }
	}
	
	public UInt32 time
	{
		get { return m_time; }
	}
	
	public override int Load(byte[] buffer, int index)
	{
		Table.Loader loader = new Table.Loader(ref buffer, index);
		loader.Load(ref m_index).Load(ref m_miss_id).Load(ref m_scene_id).Load(ref m_camera_id).Load(ref m_time);
		return loader.Size;
	}
}

// source: R 任务相机关联表.xls, sheet: Sheet1
public sealed class MissionCameraInfoManager : Table.Manager<MissionCameraInfo>
{
	private static readonly MissionCameraInfoManager ms_instance = new MissionCameraInfoManager();
	
	private MissionCameraInfoManager()
	{
	}
	
	public static MissionCameraInfoManager instance
	{
		get { return ms_instance; }
	}
	
	public string source
	{
		get { return "missioncamerainfo.tbl"; }
	}
	
	public bool Load(string path)
	{
		Register();
		return Load(path, source, MissionCameraInfo.Version);
	}
	
	public MissionCameraInfo Find(UInt32 key)
	{
		return FindInternal(key);
	}
	
	#region new helper
	public static object NewMissionCameraInfo()
	{
		return new MissionCameraInfo();
	}
	
	private static void Register()
	{
		Table.NewHelper.Clear();
		Table.NewHelper.Register(typeof(MissionCameraInfo), NewMissionCameraInfo);
	}
	#endregion
}
