// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: ItemCreate.prot

#ifndef _TDL_ITEMCREATE_H_
#define _TDL_ITEMCREATE_H_

#include "table_utility.h"

class ItemCreate;
class ItemCreateManager;


// ===================================================================
#pragma pack( 1 )
class ItemCreate
{
public:
	// nested types ----------------------------------------------------
	typedef uint64	KeyType;
	
	static const uint32 Version = 3887715505;
	
	uint64 Key() const;
	
	uint64 id() const;
	uint32 w1() const;
	uint32 w2() const;
	
private:
	uint64 m_id;
	uint32 m_w1;
	uint32 m_w2;
};
#pragma pack()

// -------------------------------------------------------------------
// source: D 道具生成表.xls, sheet: Sheet1
class ItemCreateManager : public Table::Manager, public Singleton< ItemCreateManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const ItemCreate& Get( int index ) const;
	const ItemCreate* Find( const uint64 key ) const;
	
private:
	friend class Singleton< ItemCreateManager >;
	typedef Table::RepeatField< ItemCreateManager, ItemCreate >	ItemCreateArray;
	
	ItemCreateManager();
	~ItemCreateManager();
	
private:
	const ItemCreateArray *m_array;
};


// ===================================================================
// inline methords of ItemCreate
inline uint64 ItemCreate::Key() const
{
	return Combiner< uint64 >::Combine( m_id );
}

inline uint64 ItemCreate::id() const
{
	return m_id;
}

inline uint32 ItemCreate::w1() const
{
	return m_w1;
}

inline uint32 ItemCreate::w2() const
{
	return m_w2;
}


// inline methords of ItemCreateManager
inline ItemCreateManager::ItemCreateManager()
	: m_array( NULL )
{
}

inline ItemCreateManager::~ItemCreateManager()
{
}

inline int ItemCreateManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* ItemCreateManager::Source() const
{
	return "itemcreate.tbl";
}

inline bool ItemCreateManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const ItemCreateArray *)data;
	return true;
}

inline bool ItemCreateManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const ItemCreateArray *)data;
	return true;
}

inline const ItemCreate& ItemCreateManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const ItemCreate* ItemCreateManager::Find( uint64 key ) const
{
	assert( m_array );
	return BinarySerach< ItemCreate >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif
