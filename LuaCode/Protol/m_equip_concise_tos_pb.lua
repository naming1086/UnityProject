--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_equip_concise_tos_pb')

M_EQUIP_CONCISE_TOS = protobuf.Descriptor();
M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD = protobuf.FieldDescriptor();
M_EQUIP_CONCISE_TOS_TYPE_FIELD = protobuf.FieldDescriptor();
M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD = protobuf.FieldDescriptor();

M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD.name = "equip_id"
M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD.full_name = ".m_equip_concise_tos.equip_id"
M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD.number = 1
M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD.index = 0
M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD.label = 1
M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD.has_default_value = true
M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD.default_value = 0
M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD.type = 5
M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD.cpp_type = 1

M_EQUIP_CONCISE_TOS_TYPE_FIELD.name = "type"
M_EQUIP_CONCISE_TOS_TYPE_FIELD.full_name = ".m_equip_concise_tos.type"
M_EQUIP_CONCISE_TOS_TYPE_FIELD.number = 2
M_EQUIP_CONCISE_TOS_TYPE_FIELD.index = 1
M_EQUIP_CONCISE_TOS_TYPE_FIELD.label = 1
M_EQUIP_CONCISE_TOS_TYPE_FIELD.has_default_value = true
M_EQUIP_CONCISE_TOS_TYPE_FIELD.default_value = 0
M_EQUIP_CONCISE_TOS_TYPE_FIELD.type = 5
M_EQUIP_CONCISE_TOS_TYPE_FIELD.cpp_type = 1

M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD.name = "lock_index_list"
M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD.full_name = ".m_equip_concise_tos.lock_index_list"
M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD.number = 3
M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD.index = 2
M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD.label = 3
M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD.has_default_value = false
M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD.default_value = {}
M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD.type = 5
M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD.cpp_type = 1

M_EQUIP_CONCISE_TOS.name = "m_equip_concise_tos"
M_EQUIP_CONCISE_TOS.full_name = ".m_equip_concise_tos"
M_EQUIP_CONCISE_TOS.nested_types = {}
M_EQUIP_CONCISE_TOS.enum_types = {}
M_EQUIP_CONCISE_TOS.fields = {M_EQUIP_CONCISE_TOS_EQUIP_ID_FIELD, M_EQUIP_CONCISE_TOS_TYPE_FIELD, M_EQUIP_CONCISE_TOS_LOCK_INDEX_LIST_FIELD}
M_EQUIP_CONCISE_TOS.is_extendable = false
M_EQUIP_CONCISE_TOS.extensions = {}

m_equip_concise_tos = protobuf.Message(M_EQUIP_CONCISE_TOS)
