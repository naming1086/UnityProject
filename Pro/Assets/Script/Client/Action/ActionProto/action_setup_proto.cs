//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from: action_setup_proto.proto
// Note: requires additional types generated from: action_editor_proto.proto
namespace ProtoBuf
{
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"UnitActionInfo")]
  public partial class UnitActionInfo : global::ProtoBuf.IExtensible
  {
    public UnitActionInfo() {}
    
    private int _ID;
    [global::ProtoBuf.ProtoMember(1, IsRequired = true, Name=@"ID", DataFormat = global::ProtoBuf.DataFormat.TwosComplement)]
    public int ID
    {
      get { return _ID; }
      set { _ID = value; }
    }
    private readonly global::System.Collections.Generic.List<ProtoBuf.ActionGroupData> _ActionGroupList = new global::System.Collections.Generic.List<ProtoBuf.ActionGroupData>();
    [global::ProtoBuf.ProtoMember(2, Name=@"ActionGroupList", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public global::System.Collections.Generic.List<ProtoBuf.ActionGroupData> ActionGroupList
    {
      get { return _ActionGroupList; }
    }
  

    private string _Desc = "";
    [global::ProtoBuf.ProtoMember(3, IsRequired = false, Name=@"Desc", DataFormat = global::ProtoBuf.DataFormat.Default)]
    [global::System.ComponentModel.DefaultValue("")]
    public string Desc
    {
      get { return _Desc; }
      set { _Desc = value; }
    }
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
  [global::System.Serializable, global::ProtoBuf.ProtoContract(Name=@"ActionSetupInfo")]
  public partial class ActionSetupInfo : global::ProtoBuf.IExtensible
  {
    public ActionSetupInfo() {}
    
    private readonly global::System.Collections.Generic.List<ProtoBuf.UnitActionInfo> _Units = new global::System.Collections.Generic.List<ProtoBuf.UnitActionInfo>();
    [global::ProtoBuf.ProtoMember(1, Name=@"Units", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public global::System.Collections.Generic.List<ProtoBuf.UnitActionInfo> Units
    {
      get { return _Units; }
    }
  
    private readonly global::System.Collections.Generic.List<ProtoBuf.CameraGroup> _Cameras = new global::System.Collections.Generic.List<ProtoBuf.CameraGroup>();
    [global::ProtoBuf.ProtoMember(2, Name=@"Cameras", DataFormat = global::ProtoBuf.DataFormat.Default)]
    public global::System.Collections.Generic.List<ProtoBuf.CameraGroup> Cameras
    {
      get { return _Cameras; }
    }
  
    private global::ProtoBuf.IExtension extensionObject;
    global::ProtoBuf.IExtension global::ProtoBuf.IExtensible.GetExtensionObject(bool createIfMissing)
      { return global::ProtoBuf.Extensible.GetExtensionObject(ref extensionObject, createIfMissing); }
  }
  
}