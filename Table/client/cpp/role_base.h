// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: role_base.prot

#ifndef _TDL_ROLE_BASE_H_
#define _TDL_ROLE_BASE_H_

#include "table_utility.h"

class RoleBase;
class RoleBaseManager;


// ===================================================================
#pragma pack( 1 )
class RoleBase
{
public:
	// nested types ----------------------------------------------------
	typedef uint16	KeyType;
	
	static const uint32 Version = 4135149894;
	
	uint16 Key() const;
	
	uint16 hero_no() const;
	uint16 baseid() const;
	const char* role_name() const;
	const char* model_path() const;
	uint8 character_type() const;
	const char* ui_model() const;
	
private:
	uint16 m_hero_no;
	uint16 m_baseid;
	int    m_role_name;
	int    m_model_path;
	uint8  m_character_type;
	int    m_ui_model;
};
#pragma pack()

// -------------------------------------------------------------------
// source: J 角色模型表.xls, sheet: Sheet1
class RoleBaseManager : public Table::Manager, public Singleton< RoleBaseManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const RoleBase& Get( int index ) const;
	const RoleBase* Find( const uint16 key ) const;
	
private:
	friend class Singleton< RoleBaseManager >;
	typedef Table::RepeatField< RoleBaseManager, RoleBase >	RoleBaseArray;
	
	RoleBaseManager();
	~RoleBaseManager();
	
private:
	const RoleBaseArray *m_array;
};


// ===================================================================
// inline methords of RoleBase
inline uint16 RoleBase::Key() const
{
	return Combiner< uint16 >::Combine( m_baseid );
}

inline uint16 RoleBase::hero_no() const
{
	return m_hero_no;
}

inline uint16 RoleBase::baseid() const
{
	return m_baseid;
}

inline const char* RoleBase::role_name() const
{
	return RoleBaseManager::Instance().String( m_role_name );
}

inline const char* RoleBase::model_path() const
{
	return RoleBaseManager::Instance().String( m_model_path );
}

inline uint8 RoleBase::character_type() const
{
	return m_character_type;
}

inline const char* RoleBase::ui_model() const
{
	return RoleBaseManager::Instance().String( m_ui_model );
}


// inline methords of RoleBaseManager
inline RoleBaseManager::RoleBaseManager()
	: m_array( NULL )
{
}

inline RoleBaseManager::~RoleBaseManager()
{
}

inline int RoleBaseManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* RoleBaseManager::Source() const
{
	return "role_base.tbl";
}

inline bool RoleBaseManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const RoleBaseArray *)data;
	return true;
}

inline bool RoleBaseManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const RoleBaseArray *)data;
	return true;
}

inline const RoleBase& RoleBaseManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const RoleBase* RoleBaseManager::Find( uint16 key ) const
{
	assert( m_array );
	return BinarySerach< RoleBase >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif