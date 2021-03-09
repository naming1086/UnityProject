// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: scene_info.prot

#ifndef _TDL_SCENE_INFO_H_
#define _TDL_SCENE_INFO_H_

#include "table_utility.h"

class SceneInfo;
class SceneInfoManager;


// ===================================================================
#pragma pack( 1 )
class SceneInfo
{
public:
	// nested types ----------------------------------------------------
	class vector3
	{
	public:
		int32 x() const;
		int32 y() const;
		int32 z() const;
		
	private:
		int32 m_x;
		int32 m_y;
		int32 m_z;
	};
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< SceneInfoManager, uint32 >	npcs;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< SceneInfoManager, npcs >	res_npc;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< SceneInfoManager, Table::String< SceneInfoManager > >	triggers;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< SceneInfoManager, uint32 >	update;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< SceneInfoManager, uint32 >	sceneids;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< SceneInfoManager, uint16 >	uilist;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< SceneInfoManager, uint8 >	fightmodestruct;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< SceneInfoManager, Table::String< SceneInfoManager > >	res_screen;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< SceneInfoManager, uint8 >	fbUnits;
	
	typedef uint32	KeyType;
	
	static const uint32 Version = 2614937556;
	
	uint32 Key() const;
	
	uint32 id() const;
	const char* name() const;
	const char* comment() const;
	uint8 dontdestroy() const;
	const res_screen& res_name() const;
	const char* gridname() const;
	const char* bgm() const;
	uint16 camset() const;
	const uilist& openui() const;
	uint8 scene_type() const;
	uint8 scene_sub_type() const;
	int32 show_num() const;
	uint8 can_hit_safe_mons() const;
	const npcs& npc_list() const;
	const update& update_list() const;
	uint8 isnorrevive() const;
	uint8 isorigrevive() const;
	const triggers& trigger() const;
	uint32 map_id() const;
	const sceneids& link_scene() const;
	const triggers& mission_trigger() const;
	const triggers& enter_scene_trigger() const;
	const fightmodestruct& fightmodes() const;
	uint16 playid() const;
	const fbUnits& fbunitlist() const;
	const char* maptex() const;
	uint8 portal_type() const;
	uint32 scene_view() const;
	uint8 enable_preload() const;
	uint8 forbid_cam_ctrl() const;
	
private:
	uint32          m_id;
	int             m_name;
	int             m_comment;
	uint8           m_dontDestroy;
	res_screen      m_res_name;
	int             m_gridName;
	int             m_bgm;
	uint16          m_camSet;
	uilist          m_openUI;
	uint8           m_scene_type;
	uint8           m_scene_sub_type;
	int32           m_show_num;
	uint8           m_can_hit_safe_mons;
	npcs            m_npc_list;
	update          m_update_list;
	uint8           m_isNorRevive;
	uint8           m_isOrigRevive;
	triggers        m_Trigger;
	uint32          m_map_id;
	sceneids        m_link_scene;
	triggers        m_mission_trigger;
	triggers        m_enter_scene_trigger;
	fightmodestruct m_fightmodes;
	uint16          m_playId;
	fbUnits         m_fbUnitList;
	int             m_maptex;
	uint8           m_portal_type;
	uint32          m_scene_view;
	uint8           m_enable_preload;
	uint8           m_forbid_cam_ctrl;
};
#pragma pack()

// -------------------------------------------------------------------
// source: C 场景设置表.xls, sheet: Sheet1
class SceneInfoManager : public Table::Manager, public Singleton< SceneInfoManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const SceneInfo& Get( int index ) const;
	const SceneInfo* Find( const uint32 key ) const;
	
private:
	friend class Singleton< SceneInfoManager >;
	typedef Table::RepeatField< SceneInfoManager, SceneInfo >	SceneInfoArray;
	
	SceneInfoManager();
	~SceneInfoManager();
	
private:
	const SceneInfoArray *m_array;
};


// ===================================================================
// inline methords of SceneInfo
inline uint32 SceneInfo::Key() const
{
	return Combiner< uint32 >::Combine( m_id );
}

inline uint32 SceneInfo::id() const
{
	return m_id;
}

inline const char* SceneInfo::name() const
{
	return SceneInfoManager::Instance().String( m_name );
}

inline const char* SceneInfo::comment() const
{
	return SceneInfoManager::Instance().String( m_comment );
}

inline uint8 SceneInfo::dontdestroy() const
{
	return m_dontDestroy;
}

inline const SceneInfo::res_screen& SceneInfo::res_name() const
{
	return m_res_name;
}

inline const char* SceneInfo::gridname() const
{
	return SceneInfoManager::Instance().String( m_gridName );
}

inline const char* SceneInfo::bgm() const
{
	return SceneInfoManager::Instance().String( m_bgm );
}

inline uint16 SceneInfo::camset() const
{
	return m_camSet;
}

inline const SceneInfo::uilist& SceneInfo::openui() const
{
	return m_openUI;
}

inline uint8 SceneInfo::scene_type() const
{
	return m_scene_type;
}

inline uint8 SceneInfo::scene_sub_type() const
{
	return m_scene_sub_type;
}

inline int32 SceneInfo::show_num() const
{
	return m_show_num;
}

inline uint8 SceneInfo::can_hit_safe_mons() const
{
	return m_can_hit_safe_mons;
}

inline const SceneInfo::npcs& SceneInfo::npc_list() const
{
	return m_npc_list;
}

inline const SceneInfo::update& SceneInfo::update_list() const
{
	return m_update_list;
}

inline uint8 SceneInfo::isnorrevive() const
{
	return m_isNorRevive;
}

inline uint8 SceneInfo::isorigrevive() const
{
	return m_isOrigRevive;
}

inline const SceneInfo::triggers& SceneInfo::trigger() const
{
	return m_Trigger;
}

inline uint32 SceneInfo::map_id() const
{
	return m_map_id;
}

inline const SceneInfo::sceneids& SceneInfo::link_scene() const
{
	return m_link_scene;
}

inline const SceneInfo::triggers& SceneInfo::mission_trigger() const
{
	return m_mission_trigger;
}

inline const SceneInfo::triggers& SceneInfo::enter_scene_trigger() const
{
	return m_enter_scene_trigger;
}

inline const SceneInfo::fightmodestruct& SceneInfo::fightmodes() const
{
	return m_fightmodes;
}

inline uint16 SceneInfo::playid() const
{
	return m_playId;
}

inline const SceneInfo::fbUnits& SceneInfo::fbunitlist() const
{
	return m_fbUnitList;
}

inline const char* SceneInfo::maptex() const
{
	return SceneInfoManager::Instance().String( m_maptex );
}

inline uint8 SceneInfo::portal_type() const
{
	return m_portal_type;
}

inline uint32 SceneInfo::scene_view() const
{
	return m_scene_view;
}

inline uint8 SceneInfo::enable_preload() const
{
	return m_enable_preload;
}

inline uint8 SceneInfo::forbid_cam_ctrl() const
{
	return m_forbid_cam_ctrl;
}


// inline methords of SceneInfo::vector3
inline int32 SceneInfo::vector3::x() const
{
	return m_x;
}

inline int32 SceneInfo::vector3::y() const
{
	return m_y;
}

inline int32 SceneInfo::vector3::z() const
{
	return m_z;
}


// inline methords of SceneInfoManager
inline SceneInfoManager::SceneInfoManager()
	: m_array( NULL )
{
}

inline SceneInfoManager::~SceneInfoManager()
{
}

inline int SceneInfoManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* SceneInfoManager::Source() const
{
	return "scene_info.tbl";
}

inline bool SceneInfoManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const SceneInfoArray *)data;
	return true;
}

inline bool SceneInfoManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const SceneInfoArray *)data;
	return true;
}

inline const SceneInfo& SceneInfoManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const SceneInfo* SceneInfoManager::Find( uint32 key ) const
{
	assert( m_array );
	return BinarySerach< SceneInfo >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif
