// Generated by the Table Description Language compiler.  DO NOT EDIT!
// source: wing_view.prot

#ifndef _TDL_WING_VIEW_H_
#define _TDL_WING_VIEW_H_

#include "table_utility.h"

class WingView;
class WingViewManager;


// ===================================================================
#pragma pack( 1 )
class WingView
{
public:
	// nested types ----------------------------------------------------
	typedef uint32	KeyType;
	
	static const uint32 Version = 1575244316;
	
	uint32 Key() const;
	
	uint32 id() const;
	uint32 start() const;
	uint32 up_item() const;
	uint32 up_item_num() const;
	uint32 atk() const;
	uint32 def() const;
	uint32 arp() const;
	uint32 hppro() const;
	
private:
	uint32 m_id;
	uint32 m_start;
	uint32 m_up_item;
	uint32 m_up_item_num;
	uint32 m_atk;
	uint32 m_def;
	uint32 m_arp;
	uint32 m_hppro;
};
#pragma pack()

// -------------------------------------------------------------------
// source: C 翅膀外观表.xls, sheet: Sheet1
class WingViewManager : public Table::Manager, public Singleton< WingViewManager >
{
public:
	int Size() const;
	const char* Source() const;
	bool Load( const char *path );
	bool Reload( const char *path );
	
	const WingView& Get( int index ) const;
	const WingView* Find( const uint32 key ) const;
	
private:
	friend class Singleton< WingViewManager >;
	typedef Table::RepeatField< WingViewManager, WingView >	WingViewArray;
	
	WingViewManager();
	~WingViewManager();
	
private:
	const WingViewArray *m_array;
};


// ===================================================================
// inline methords of WingView
inline uint32 WingView::Key() const
{
	return Combiner< uint32 >::Combine( m_id );
}

inline uint32 WingView::id() const
{
	return m_id;
}

inline uint32 WingView::start() const
{
	return m_start;
}

inline uint32 WingView::up_item() const
{
	return m_up_item;
}

inline uint32 WingView::up_item_num() const
{
	return m_up_item_num;
}

inline uint32 WingView::atk() const
{
	return m_atk;
}

inline uint32 WingView::def() const
{
	return m_def;
}

inline uint32 WingView::arp() const
{
	return m_arp;
}

inline uint32 WingView::hppro() const
{
	return m_hppro;
}


// inline methords of WingViewManager
inline WingViewManager::WingViewManager()
	: m_array( NULL )
{
}

inline WingViewManager::~WingViewManager()
{
}

inline int WingViewManager::Size() const
{
	assert( m_array );
	return m_array->Size();
}

inline const char* WingViewManager::Source() const
{
	return "wing_view.tbl";
}

inline bool WingViewManager::Load( const char *path )
{
	const char *data = Table::Manager::Load( path, Source() );
	if( !data )
		return false;
		
	m_array = (const WingViewArray *)data;
	return true;
}

inline bool WingViewManager::Reload( const char *path )
{
	const char *data = Table::Manager::Reload( path, Source() );
	if( !data )
		return false;
		
	m_array = (const WingViewArray *)data;
	return true;
}

inline const WingView& WingViewManager::Get( int index ) const
{
	assert( m_array );
	return m_array->Get( index );
}

inline const WingView* WingViewManager::Find( uint32 key ) const
{
	assert( m_array );
	return BinarySerach< WingView >( Data( m_array->Offset() ), m_array->Size(), key );
}


#endif
