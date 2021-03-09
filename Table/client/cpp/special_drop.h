// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: special_drop.prot

#ifndef _TDL_SPECIAL_DROP_H_
#define _TDL_SPECIAL_DROP_H_

#include "table_utility.h"

class SpecialDrop;
class SpecialDropManager;


// ===================================================================
#pragma pack( 1 )
class SpecialDrop
{
public:
	// nested types ----------------------------------------------------
	typedef uint32	KeyType;
	
	static const uint32 Version = 3079057388;
	
	uint32 Key() const;
	
	uint32 id() const;
	uint32 groupid() const;
	uint32 dropid() const;
	
private:
	uint32 m_id;
	uint32 m_groupId;
	uint32 m_dropid;
};
#pragma pack()

// -------------------------------------------------------------------
// source: T 特殊掉落.xls, sheet: Sheet1
class SpecialDropManager : public Table::Manager, public Singleton< SpecialDropManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const SpecialDrop& Get( int index ) const;
	const SpecialDrop* Find( const uint32 key ) const;
	
private:
	friend class Singleton< SpecialDropManager >;
	typedef Table::RepeatField< SpecialDropManager, SpecialDrop >	SpecialDropArray;
	
	SpecialDropManager();
	~SpecialDropManager();
	
private:
	const SpecialDropArray *m_array;
};


// ===================================================================
// inline methords of SpecialDrop
inline uint32 SpecialDrop::Key() const
{
	return Combiner< uint32 >::Combine( m_id );
}

inline uint32 SpecialDrop::id() const
{
	return m_id;
}

inline uint32 SpecialDrop::groupid() const
{
	return m_groupId;
}

inline uint32 SpecialDrop::dropid() const
{
	return m_dropid;
}


// inline methords of SpecialDropManager
inline SpecialDropManager::SpecialDropManager()
	: m_array( NULL )
{
}

inline SpecialDropManager::~SpecialDropManager()
{
}

inline int SpecialDropManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* SpecialDropManager::Source() const
{
	return "special_drop.tbl";
}

inline bool SpecialDropManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const SpecialDropArray *)data;
	return true;
}

inline bool SpecialDropManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const SpecialDropArray *)data;
	return true;
}

inline const SpecialDrop& SpecialDropManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const SpecialDrop* SpecialDropManager::Find( uint32 key ) const
{
	assert( m_array );
	return BinarySerach< SpecialDrop >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif