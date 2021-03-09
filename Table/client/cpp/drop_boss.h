// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: drop_boss.prot

#ifndef _TDL_DROP_BOSS_H_
#define _TDL_DROP_BOSS_H_

#include "table_utility.h"

class DropBoss;
class DropBossManager;


// ===================================================================
#pragma pack( 1 )
class DropBoss
{
public:
	// nested types ----------------------------------------------------
	typedef uint32	KeyType;
	
	static const uint32 Version = 4064357542;
	
	uint32 Key() const;
	
	uint32 id() const;
	uint32 specialdrop() const;
	uint32 drop1() const;
	uint32 drop2() const;
	uint32 drop3() const;
	uint32 drop4() const;
	uint32 drop5() const;
	uint32 drop6() const;
	uint32 drop7() const;
	uint32 drop8() const;
	uint32 drop9() const;
	uint32 drop10() const;
	uint32 drop11() const;
	uint32 drop12() const;
	uint32 drop13() const;
	uint32 drop14() const;
	uint32 drop15() const;
	uint32 drop16() const;
	uint32 drop17() const;
	uint32 drop18() const;
	uint32 drop19() const;
	uint32 drop20() const;
	
private:
	uint32 m_id;
	uint32 m_specialDrop;
	uint32 m_drop1;
	uint32 m_drop2;
	uint32 m_drop3;
	uint32 m_drop4;
	uint32 m_drop5;
	uint32 m_drop6;
	uint32 m_drop7;
	uint32 m_drop8;
	uint32 m_drop9;
	uint32 m_drop10;
	uint32 m_drop11;
	uint32 m_drop12;
	uint32 m_drop13;
	uint32 m_drop14;
	uint32 m_drop15;
	uint32 m_drop16;
	uint32 m_drop17;
	uint32 m_drop18;
	uint32 m_drop19;
	uint32 m_drop20;
};
#pragma pack()

// -------------------------------------------------------------------
// source: D 掉落Boss表.xls, sheet: Sheet1
class DropBossManager : public Table::Manager, public Singleton< DropBossManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const DropBoss& Get( int index ) const;
	const DropBoss* Find( const uint32 key ) const;
	
private:
	friend class Singleton< DropBossManager >;
	typedef Table::RepeatField< DropBossManager, DropBoss >	DropBossArray;
	
	DropBossManager();
	~DropBossManager();
	
private:
	const DropBossArray *m_array;
};


// ===================================================================
// inline methords of DropBoss
inline uint32 DropBoss::Key() const
{
	return Combiner< uint32 >::Combine( m_id );
}

inline uint32 DropBoss::id() const
{
	return m_id;
}

inline uint32 DropBoss::specialdrop() const
{
	return m_specialDrop;
}

inline uint32 DropBoss::drop1() const
{
	return m_drop1;
}

inline uint32 DropBoss::drop2() const
{
	return m_drop2;
}

inline uint32 DropBoss::drop3() const
{
	return m_drop3;
}

inline uint32 DropBoss::drop4() const
{
	return m_drop4;
}

inline uint32 DropBoss::drop5() const
{
	return m_drop5;
}

inline uint32 DropBoss::drop6() const
{
	return m_drop6;
}

inline uint32 DropBoss::drop7() const
{
	return m_drop7;
}

inline uint32 DropBoss::drop8() const
{
	return m_drop8;
}

inline uint32 DropBoss::drop9() const
{
	return m_drop9;
}

inline uint32 DropBoss::drop10() const
{
	return m_drop10;
}

inline uint32 DropBoss::drop11() const
{
	return m_drop11;
}

inline uint32 DropBoss::drop12() const
{
	return m_drop12;
}

inline uint32 DropBoss::drop13() const
{
	return m_drop13;
}

inline uint32 DropBoss::drop14() const
{
	return m_drop14;
}

inline uint32 DropBoss::drop15() const
{
	return m_drop15;
}

inline uint32 DropBoss::drop16() const
{
	return m_drop16;
}

inline uint32 DropBoss::drop17() const
{
	return m_drop17;
}

inline uint32 DropBoss::drop18() const
{
	return m_drop18;
}

inline uint32 DropBoss::drop19() const
{
	return m_drop19;
}

inline uint32 DropBoss::drop20() const
{
	return m_drop20;
}


// inline methords of DropBossManager
inline DropBossManager::DropBossManager()
	: m_array( NULL )
{
}

inline DropBossManager::~DropBossManager()
{
}

inline int DropBossManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* DropBossManager::Source() const
{
	return "drop_boss.tbl";
}

inline bool DropBossManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const DropBossArray *)data;
	return true;
}

inline bool DropBossManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const DropBossArray *)data;
	return true;
}

inline const DropBoss& DropBossManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const DropBoss* DropBossManager::Find( uint32 key ) const
{
	assert( m_array );
	return BinarySerach< DropBoss >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif