// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: systemopen.prot

#ifndef _TDL_SYSTEMOPEN_H_
#define _TDL_SYSTEMOPEN_H_

#include "table_utility.h"

class systemopen;
class systemopenManager;


// ===================================================================
#pragma pack( 1 )
class systemopen
{
public:
	// nested types ----------------------------------------------------
	typedef Table::RepeatField< systemopenManager, uint32 >	paramList;
	
	typedef uint16	KeyType;
	
	static const uint32 Version = 2539895941;
	
	uint16 Key() const;
	
	uint16 systemid() const;
	uint16 triggermethod() const;
	uint16 triggerparm() const;
	const char* buttonname() const;
	const char* sysdescribe() const;
	const paramList& itemid() const;
	uint16 modelid() const;
	uint8 open_type() const;
	uint8 open_anime() const;
	uint16 open_anime_time() const;
	
private:
	uint16    m_systemid;
	uint16    m_triggermethod;
	uint16    m_triggerparm;
	int       m_buttonname;
	int       m_sysdescribe;
	paramList m_itemid;
	uint16    m_modelid;
	uint8     m_open_type;
	uint8     m_open_anime;
	uint16    m_open_anime_time;
};
#pragma pack()

// -------------------------------------------------------------------
// source: X 系统开放表.xls, sheet: Sheet1
class systemopenManager : public Table::Manager, public Singleton< systemopenManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const systemopen& Get( int index ) const;
	const systemopen* Find( const uint16 key ) const;
	
private:
	friend class Singleton< systemopenManager >;
	typedef Table::RepeatField< systemopenManager, systemopen >	systemopenArray;
	
	systemopenManager();
	~systemopenManager();
	
private:
	const systemopenArray *m_array;
};


// ===================================================================
// inline methords of systemopen
inline uint16 systemopen::Key() const
{
	return Combiner< uint16 >::Combine( m_systemid );
}

inline uint16 systemopen::systemid() const
{
	return m_systemid;
}

inline uint16 systemopen::triggermethod() const
{
	return m_triggermethod;
}

inline uint16 systemopen::triggerparm() const
{
	return m_triggerparm;
}

inline const char* systemopen::buttonname() const
{
	return systemopenManager::Instance().String( m_buttonname );
}

inline const char* systemopen::sysdescribe() const
{
	return systemopenManager::Instance().String( m_sysdescribe );
}

inline const systemopen::paramList& systemopen::itemid() const
{
	return m_itemid;
}

inline uint16 systemopen::modelid() const
{
	return m_modelid;
}

inline uint8 systemopen::open_type() const
{
	return m_open_type;
}

inline uint8 systemopen::open_anime() const
{
	return m_open_anime;
}

inline uint16 systemopen::open_anime_time() const
{
	return m_open_anime_time;
}


// inline methords of systemopenManager
inline systemopenManager::systemopenManager()
	: m_array( NULL )
{
}

inline systemopenManager::~systemopenManager()
{
}

inline int systemopenManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* systemopenManager::Source() const
{
	return "systemopen.tbl";
}

inline bool systemopenManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const systemopenArray *)data;
	return true;
}

inline bool systemopenManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const systemopenArray *)data;
	return true;
}

inline const systemopen& systemopenManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const systemopen* systemopenManager::Find( uint16 key ) const
{
	assert( m_array );
	return BinarySerach< systemopen >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif
