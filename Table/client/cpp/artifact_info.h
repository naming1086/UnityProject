// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: artifact_info.prot

#ifndef _TDL_ARTIFACT_INFO_H_
#define _TDL_ARTIFACT_INFO_H_

#include "table_utility.h"

class ArtifactInfo;
class ArtifactInfoManager;


// ===================================================================
#pragma pack( 1 )
class ArtifactInfo
{
public:
	// nested types ----------------------------------------------------
	typedef uint32	KeyType;
	
	static const uint32 Version = 4057804896;
	
	uint32 Key() const;
	
	uint32 baseid() const;
	const char* name() const;
	uint16 model_id_man() const;
	uint16 model_id_woman() const;
	uint16 model_ui_id_man() const;
	uint16 model_ui_id_woman() const;
	uint8 mount_point() const;
	
private:
	uint32 m_baseid;
	int    m_name;
	uint16 m_model_id_man;
	uint16 m_model_id_woman;
	uint16 m_model_ui_id_man;
	uint16 m_model_ui_id_woman;
	uint8  m_mount_point;
};
#pragma pack()

// -------------------------------------------------------------------
// source: S 神兵基础表.xls, sheet: Sheet1
class ArtifactInfoManager : public Table::Manager, public Singleton< ArtifactInfoManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const ArtifactInfo& Get( int index ) const;
	const ArtifactInfo* Find( const uint32 key ) const;
	
private:
	friend class Singleton< ArtifactInfoManager >;
	typedef Table::RepeatField< ArtifactInfoManager, ArtifactInfo >	ArtifactInfoArray;
	
	ArtifactInfoManager();
	~ArtifactInfoManager();
	
private:
	const ArtifactInfoArray *m_array;
};


// ===================================================================
// inline methords of ArtifactInfo
inline uint32 ArtifactInfo::Key() const
{
	return Combiner< uint32 >::Combine( m_baseid );
}

inline uint32 ArtifactInfo::baseid() const
{
	return m_baseid;
}

inline const char* ArtifactInfo::name() const
{
	return ArtifactInfoManager::Instance().String( m_name );
}

inline uint16 ArtifactInfo::model_id_man() const
{
	return m_model_id_man;
}

inline uint16 ArtifactInfo::model_id_woman() const
{
	return m_model_id_woman;
}

inline uint16 ArtifactInfo::model_ui_id_man() const
{
	return m_model_ui_id_man;
}

inline uint16 ArtifactInfo::model_ui_id_woman() const
{
	return m_model_ui_id_woman;
}

inline uint8 ArtifactInfo::mount_point() const
{
	return m_mount_point;
}


// inline methords of ArtifactInfoManager
inline ArtifactInfoManager::ArtifactInfoManager()
	: m_array( NULL )
{
}

inline ArtifactInfoManager::~ArtifactInfoManager()
{
}

inline int ArtifactInfoManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* ArtifactInfoManager::Source() const
{
	return "artifact_info.tbl";
}

inline bool ArtifactInfoManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const ArtifactInfoArray *)data;
	return true;
}

inline bool ArtifactInfoManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const ArtifactInfoArray *)data;
	return true;
}

inline const ArtifactInfo& ArtifactInfoManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const ArtifactInfo* ArtifactInfoManager::Find( uint32 key ) const
{
	assert( m_array );
	return BinarySerach< ArtifactInfo >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif