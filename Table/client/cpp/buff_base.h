// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: buff_base.prot

#ifndef _TDL_BUFF_BASE_H_
#define _TDL_BUFF_BASE_H_

#include "table_utility.h"

class BuffBase;
class BuffBaseManager;


// ===================================================================
#pragma pack( 1 )
class BuffBase
{
public:
	// nested types ----------------------------------------------------
	typedef Table::RepeatField< BuffBaseManager, uint16 >	Effect;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< BuffBaseManager, uint16 >	ResistBuff;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< BuffBaseManager, uint32 >	IDs;
	
	// -------------------------------------------------------------------
	class Val
	{
	public:
		int32 k() const;
		int32 v() const;
		
	private:
		int32 m_k;
		int32 m_v;
	};
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< BuffBaseManager, Val >	Items;
	
	typedef uint32	KeyType;
	
	static const uint32 Version = 3745162130;
	
	uint32 Key() const;
	
	uint32 buff_id() const;
	uint32 series_id() const;
	const char* buff_name() const;
	const char* buff_describe() const;
	uint8 buff_type() const;
	uint8 effect_type() const;
	uint8 exist_type() const;
	uint16 trigger_precent() const;
	uint16 header_level() const;
	uint16 disperse_level() const;
	float live_time() const;
	uint8 fold_num() const;
	uint8 cancel_type() const;
	uint8 outline() const;
	uint16 affect_interval() const;
	const char* icon() const;
	const char* eft() const;
	uint8 eft_pos() const;
	uint8 eft_forward() const;
	const Items& items() const;
	const ResistBuff& resist_buff() const;
	const char* play_action() const;
	uint16 illusion_model() const;
	uint8 illusion_type() const;
	uint16 totem_target() const;
	const IDs& totem_tarbuf() const;
	uint16 radtimes() const;
	uint8 absorbtype() const;
	
private:
	uint32     m_buff_id;
	uint32     m_series_id;
	int        m_buff_name;
	int        m_buff_describe;
	uint8      m_buff_type;
	uint8      m_effect_type;
	uint8      m_exist_type;
	uint16     m_trigger_precent;
	uint16     m_header_level;
	uint16     m_disperse_level;
	float      m_live_time;
	uint8      m_fold_num;
	uint8      m_cancel_type;
	uint8      m_outline;
	uint16     m_affect_interval;
	int        m_icon;
	int        m_eft;
	uint8      m_eft_pos;
	uint8      m_eft_forward;
	Items      m_items;
	ResistBuff m_resist_buff;
	int        m_Play_action;
	uint16     m_Illusion_model;
	uint8      m_Illusion_type;
	uint16     m_Totem_Target;
	IDs        m_Totem_TarBuf;
	uint16     m_RadTimes;
	uint8      m_AbsorbType;
};
#pragma pack()

// -------------------------------------------------------------------
// source: B Buff配置表.xls, sheet: Sheet1
class BuffBaseManager : public Table::Manager, public Singleton< BuffBaseManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const BuffBase& Get( int index ) const;
	const BuffBase* Find( const uint32 key ) const;
	
private:
	friend class Singleton< BuffBaseManager >;
	typedef Table::RepeatField< BuffBaseManager, BuffBase >	BuffBaseArray;
	
	BuffBaseManager();
	~BuffBaseManager();
	
private:
	const BuffBaseArray *m_array;
};


// ===================================================================
// inline methords of BuffBase
inline uint32 BuffBase::Key() const
{
	return Combiner< uint32 >::Combine( m_buff_id );
}

inline uint32 BuffBase::buff_id() const
{
	return m_buff_id;
}

inline uint32 BuffBase::series_id() const
{
	return m_series_id;
}

inline const char* BuffBase::buff_name() const
{
	return BuffBaseManager::Instance().String( m_buff_name );
}

inline const char* BuffBase::buff_describe() const
{
	return BuffBaseManager::Instance().String( m_buff_describe );
}

inline uint8 BuffBase::buff_type() const
{
	return m_buff_type;
}

inline uint8 BuffBase::effect_type() const
{
	return m_effect_type;
}

inline uint8 BuffBase::exist_type() const
{
	return m_exist_type;
}

inline uint16 BuffBase::trigger_precent() const
{
	return m_trigger_precent;
}

inline uint16 BuffBase::header_level() const
{
	return m_header_level;
}

inline uint16 BuffBase::disperse_level() const
{
	return m_disperse_level;
}

inline float BuffBase::live_time() const
{
	return m_live_time;
}

inline uint8 BuffBase::fold_num() const
{
	return m_fold_num;
}

inline uint8 BuffBase::cancel_type() const
{
	return m_cancel_type;
}

inline uint8 BuffBase::outline() const
{
	return m_outline;
}

inline uint16 BuffBase::affect_interval() const
{
	return m_affect_interval;
}

inline const char* BuffBase::icon() const
{
	return BuffBaseManager::Instance().String( m_icon );
}

inline const char* BuffBase::eft() const
{
	return BuffBaseManager::Instance().String( m_eft );
}

inline uint8 BuffBase::eft_pos() const
{
	return m_eft_pos;
}

inline uint8 BuffBase::eft_forward() const
{
	return m_eft_forward;
}

inline const BuffBase::Items& BuffBase::items() const
{
	return m_items;
}

inline const BuffBase::ResistBuff& BuffBase::resist_buff() const
{
	return m_resist_buff;
}

inline const char* BuffBase::play_action() const
{
	return BuffBaseManager::Instance().String( m_Play_action );
}

inline uint16 BuffBase::illusion_model() const
{
	return m_Illusion_model;
}

inline uint8 BuffBase::illusion_type() const
{
	return m_Illusion_type;
}

inline uint16 BuffBase::totem_target() const
{
	return m_Totem_Target;
}

inline const BuffBase::IDs& BuffBase::totem_tarbuf() const
{
	return m_Totem_TarBuf;
}

inline uint16 BuffBase::radtimes() const
{
	return m_RadTimes;
}

inline uint8 BuffBase::absorbtype() const
{
	return m_AbsorbType;
}


// inline methords of BuffBase::Val
inline int32 BuffBase::Val::k() const
{
	return m_k;
}

inline int32 BuffBase::Val::v() const
{
	return m_v;
}


// inline methords of BuffBaseManager
inline BuffBaseManager::BuffBaseManager()
	: m_array( NULL )
{
}

inline BuffBaseManager::~BuffBaseManager()
{
}

inline int BuffBaseManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* BuffBaseManager::Source() const
{
	return "buff_base.tbl";
}

inline bool BuffBaseManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const BuffBaseArray *)data;
	return true;
}

inline bool BuffBaseManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const BuffBaseArray *)data;
	return true;
}

inline const BuffBase& BuffBaseManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const BuffBase* BuffBaseManager::Find( uint32 key ) const
{
	assert( m_array );
	return BinarySerach< BuffBase >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif
