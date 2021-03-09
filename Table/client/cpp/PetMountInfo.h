// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: PetMountInfo.prot

#ifndef _TDL_PETMOUNTINFO_H_
#define _TDL_PETMOUNTINFO_H_

#include "table_utility.h"

class PetMountInfo;
class PetMountInfoManager;


// ===================================================================
#pragma pack( 1 )
class PetMountInfo
{
public:
	// nested types ----------------------------------------------------
	typedef uint32	KeyType;
	
	static const uint32 Version = 57638037;
	
	uint32 Key() const;
	
	uint32 id() const;
	const char* name() const;
	uint16 model_id() const;
	uint16 ui_model_id() const;
	const char* icon() const;
	uint8 mount_point() const;
	
private:
	uint32 m_id;
	int    m_name;
	uint16 m_model_id;
	uint16 m_ui_model_id;
	int    m_icon;
	uint8  m_mount_point;
};
#pragma pack()

// -------------------------------------------------------------------
// source: B 宝座基础表.xls, sheet: Sheet1
class PetMountInfoManager : public Table::Manager, public Singleton< PetMountInfoManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const PetMountInfo& Get( int index ) const;
	const PetMountInfo* Find( const uint32 key ) const;
	
private:
	friend class Singleton< PetMountInfoManager >;
	typedef Table::RepeatField< PetMountInfoManager, PetMountInfo >	PetMountInfoArray;
	
	PetMountInfoManager();
	~PetMountInfoManager();
	
private:
	const PetMountInfoArray *m_array;
};


// ===================================================================
// inline methords of PetMountInfo
inline uint32 PetMountInfo::Key() const
{
	return Combiner< uint32 >::Combine( m_id );
}

inline uint32 PetMountInfo::id() const
{
	return m_id;
}

inline const char* PetMountInfo::name() const
{
	return PetMountInfoManager::Instance().String( m_name );
}

inline uint16 PetMountInfo::model_id() const
{
	return m_model_id;
}

inline uint16 PetMountInfo::ui_model_id() const
{
	return m_ui_model_id;
}

inline const char* PetMountInfo::icon() const
{
	return PetMountInfoManager::Instance().String( m_icon );
}

inline uint8 PetMountInfo::mount_point() const
{
	return m_mount_point;
}


// inline methords of PetMountInfoManager
inline PetMountInfoManager::PetMountInfoManager()
	: m_array( NULL )
{
}

inline PetMountInfoManager::~PetMountInfoManager()
{
}

inline int PetMountInfoManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* PetMountInfoManager::Source() const
{
	return "petmountinfo.tbl";
}

inline bool PetMountInfoManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const PetMountInfoArray *)data;
	return true;
}

inline bool PetMountInfoManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const PetMountInfoArray *)data;
	return true;
}

inline const PetMountInfo& PetMountInfoManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const PetMountInfo* PetMountInfoManager::Find( uint32 key ) const
{
	assert( m_array );
	return BinarySerach< PetMountInfo >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif
