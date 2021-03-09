// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: summon.prot

using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;


public class Summon : Table.Binary, Table.IKey
{
	UInt32 m_baseid;
	UInt16 m_model_id;
	UInt32 m_carry_skill;
	
	public const UInt32 Version = 4199419623;
	
	public UInt64 Key()
	{
		return m_baseid;
	}
	
	public UInt32 baseid
	{
		get { return m_baseid; }
	}
	
	public UInt16 modelId
	{
		get { return m_model_id; }
	}
	
	public UInt32 carrySkill
	{
		get { return m_carry_skill; }
	}
	
	public override int Load(byte[] buffer, int index)
	{
		Table.Loader loader = new Table.Loader(ref buffer, index);
		loader.Load(ref m_baseid).Load(ref m_model_id).Load(ref m_carry_skill);
		return loader.Size;
	}
}

// source: Z 召唤体配置.xls, sheet: Sheet1
public sealed class SummonManager : Table.Manager<Summon>
{
	private static readonly SummonManager ms_instance = new SummonManager();
	
	private SummonManager()
	{
	}
	
	public static SummonManager instance
	{
		get { return ms_instance; }
	}
	
	public string source
	{
		get { return "summon.tbl"; }
	}
	
	public bool Load(string path)
	{
		Register();
		return Load(path, source, Summon.Version);
	}
	
	public Summon Find(UInt32 key)
	{
		return FindInternal(key);
	}
	
	#region new helper
	public static object NewSummon()
	{
		return new Summon();
	}
	
	private static void Register()
	{
		Table.NewHelper.Clear();
		Table.NewHelper.Register(typeof(Summon), NewSummon);
	}
	#endregion
}
