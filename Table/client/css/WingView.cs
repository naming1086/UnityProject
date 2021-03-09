// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: wing_view.prot

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;


public class WingView : Table.Binary, Table.IKey
{
	UInt32 m_id;
	UInt32 m_start;
	UInt32 m_up_item;
	UInt32 m_up_item_num;
	UInt32 m_atk;
	UInt32 m_def;
	UInt32 m_arp;
	UInt32 m_hppro;
	
	public const UInt32 Version = 1575244316;
	
	public UInt64 Key()
	{
		return m_id;
	}
	
	public UInt32 id
	{
		get { return m_id; }
	}
	
	public UInt32 start
	{
		get { return m_start; }
	}
	
	public UInt32 upItem
	{
		get { return m_up_item; }
	}
	
	public UInt32 upItemNum
	{
		get { return m_up_item_num; }
	}
	
	public UInt32 atk
	{
		get { return m_atk; }
	}
	
	public UInt32 def
	{
		get { return m_def; }
	}
	
	public UInt32 arp
	{
		get { return m_arp; }
	}
	
	public UInt32 hppro
	{
		get { return m_hppro; }
	}
	
	public override int Load(byte[] buffer, int index)
	{
		Table.Loader loader = new Table.Loader(ref buffer, index);
		loader.Load(ref m_id).Load(ref m_start).Load(ref m_up_item).Load(ref m_up_item_num).Load(ref m_atk).Load(ref m_def).Load(ref m_arp).Load(ref m_hppro);
		return loader.Size;
	}
}

// source: C 翅膀外观表.xls, sheet: Sheet1
public sealed class WingViewManager : Table.Manager<WingView>
{
	private static readonly WingViewManager ms_instance = new WingViewManager();
	
	private WingViewManager()
	{
	}
	
	public static WingViewManager instance
	{
		get { return ms_instance; }
	}
	
	public string source
	{
		get { return "wing_view.tbl"; }
	}
	
	public bool Load(string path)
	{
		Register();
		return Load(path, source, WingView.Version);
	}
	
	public WingView Find(UInt32 key)
	{
		return FindInternal(key);
	}
	
	#region new helper
	public static object NewWingView()
	{
		return new WingView();
	}
	
	private static void Register()
	{
		Table.NewHelper.Clear();
		Table.NewHelper.Register(typeof(WingView), NewWingView);
	}
	#endregion
}
