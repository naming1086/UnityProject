// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: wing.prot

#ifndef _TDL_WING_H_
#define _TDL_WING_H_

#include "table_utility.h"

class Wing;
class WingManager;


// ===================================================================
#pragma pack( 1 )
class Wing
{
public:
	// nested types ----------------------------------------------------
	typedef uint32	KeyType;
	
	static const uint32 Version = 13890925;
	
	uint32 Key() const;
	
	uint32 baseid() const;
	uint32 level() const;
	const char* name() const;
	uint16 model_id_man() const;
	uint16 model_id_woman() const;
	uint8 mount_point() const;
	const char* pathicon() const;
	
private:
	uint32 m_baseid;
	uint32 m_level;
	int    m_name;
	uint16 m_model_id_man;
	uint16 m_model_id_woman;
	uint8  m_mount_point;
	int    m_pathicon;
};
#pragma pack()

// -------------------------------------------------------------------
// source: S 神兵.xls, sheet: Sheet1
class WingManager : public Table::Manager, public Singleton< WingManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const Wing& Get( int index ) const;
	const Wing* Find( const uint32 key ) const;
	
private:
	friend class Singleton< WingManager >;
	typedef Table::RepeatField< WingManager, Wing >	WingArray;
	
	WingManager();
	~WingManager();
	
private:
	const WingArray *m_array;
};


// ===================================================================
// inline methords of Wing
inline uint32 Wing::Key() const
{
	return Combiner< uint32 >::Combine( m_baseid );
}

inline uint32 Wing::baseid() const
{
	return m_baseid;
}

inline uint32 Wing::level() const
{
	return m_level;
}

inline const char* Wing::name() const
{
	return WingManager::Instance().String( m_name );
}

inline uint16 Wing::model_id_man() const
{
	return m_model_id_man;
}

inline uint16 Wing::model_id_woman() const
{
	return m_model_id_woman;
}

inline uint8 Wing::mount_point() const
{
	return m_mount_point;
}

inline const char* Wing::pathicon() const
{
	return WingManager::Instance().String( m_pathicon );
}


// inline methords of WingManager
inline WingManager::WingManager()
	: m_array( NULL )
{
}

inline WingManager::~WingManager()
{
}

inline int WingManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* WingManager::Source() const
{
	return "wing.tbl";
}

inline bool WingManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const WingArray *)data;
	return true;
}

inline bool WingManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const WingArray *)data;
	return true;
}

inline const Wing& WingManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const Wing* WingManager::Find( uint32 key ) const
{
	assert( m_array );
	return BinarySerach< Wing >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif