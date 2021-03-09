// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: cuts_res.prot

#ifndef _TDL_CUTS_RES_H_
#define _TDL_CUTS_RES_H_

#include "table_utility.h"

class CutsRes;
class CutsResManager;


// ===================================================================
#pragma pack( 1 )
class CutsRes
{
public:
	// nested types ----------------------------------------------------
	class groupRes
	{
	public:
		const char* group_name() const;
		const char* actor_name() const;
		
	private:
		int m_group_name;
		int m_actor_name;
	};
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< CutsResManager, groupRes >	changeList;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< CutsResManager, Table::String< CutsResManager > >	clips;
	
	// -------------------------------------------------------------------
	typedef Table::RepeatField< CutsResManager, clips >	clipList;
	
	typedef uint32	KeyType;
	
	static const uint32 Version = 1249044584;
	
	uint32 Key() const;
	
	uint32 index() const;
	const char* cuts_name() const;
	uint8 repl_type() const;
	uint8 con_type1() const;
	uint16 con_val1() const;
	const changeList& res_list() const;
	const clipList& track_clips() const;
	const char* postfix() const;
	
private:
	uint32     m_index;
	int        m_cuts_name;
	uint8      m_repl_type;
	uint8      m_con_type1;
	uint16     m_con_val1;
	changeList m_res_list;
	clipList   m_track_clips;
	int        m_postfix;
};
#pragma pack()

// -------------------------------------------------------------------
// source: C 动画片段资源配置表.xls, sheet: Sheet1
class CutsResManager : public Table::Manager, public Singleton< CutsResManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const CutsRes& Get( int index ) const;
	const CutsRes* Find( const uint32 key ) const;
	
private:
	friend class Singleton< CutsResManager >;
	typedef Table::RepeatField< CutsResManager, CutsRes >	CutsResArray;
	
	CutsResManager();
	~CutsResManager();
	
private:
	const CutsResArray *m_array;
};


// ===================================================================
// inline methords of CutsRes
inline uint32 CutsRes::Key() const
{
	return Combiner< uint32 >::Combine( m_index );
}

inline uint32 CutsRes::index() const
{
	return m_index;
}

inline const char* CutsRes::cuts_name() const
{
	return CutsResManager::Instance().String( m_cuts_name );
}

inline uint8 CutsRes::repl_type() const
{
	return m_repl_type;
}

inline uint8 CutsRes::con_type1() const
{
	return m_con_type1;
}

inline uint16 CutsRes::con_val1() const
{
	return m_con_val1;
}

inline const CutsRes::changeList& CutsRes::res_list() const
{
	return m_res_list;
}

inline const CutsRes::clipList& CutsRes::track_clips() const
{
	return m_track_clips;
}

inline const char* CutsRes::postfix() const
{
	return CutsResManager::Instance().String( m_postfix );
}


// inline methords of CutsRes::groupRes
inline const char* CutsRes::groupRes::group_name() const
{
	return CutsResManager::Instance().String( m_group_name );
}

inline const char* CutsRes::groupRes::actor_name() const
{
	return CutsResManager::Instance().String( m_actor_name );
}


// inline methords of CutsResManager
inline CutsResManager::CutsResManager()
	: m_array( NULL )
{
}

inline CutsResManager::~CutsResManager()
{
}

inline int CutsResManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* CutsResManager::Source() const
{
	return "cuts_res.tbl";
}

inline bool CutsResManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const CutsResArray *)data;
	return true;
}

inline bool CutsResManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const CutsResArray *)data;
	return true;
}

inline const CutsRes& CutsResManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const CutsRes* CutsResManager::Find( uint32 key ) const
{
	assert( m_array );
	return BinarySerach< CutsRes >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif