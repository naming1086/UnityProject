--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_stone_one_key_tos_pb')

M_STONE_ONE_KEY_TOS = protobuf.Descriptor();
M_STONE_ONE_KEY_TOS_TYPE_FIELD = protobuf.FieldDescriptor();
M_STONE_ONE_KEY_TOS_ID_LIST_FIELD = protobuf.FieldDescriptor();

M_STONE_ONE_KEY_TOS_TYPE_FIELD.name = "type"
M_STONE_ONE_KEY_TOS_TYPE_FIELD.full_name = ".m_stone_one_key_tos.type"
M_STONE_ONE_KEY_TOS_TYPE_FIELD.number = 1
M_STONE_ONE_KEY_TOS_TYPE_FIELD.index = 0
M_STONE_ONE_KEY_TOS_TYPE_FIELD.label = 1
M_STONE_ONE_KEY_TOS_TYPE_FIELD.has_default_value = true
M_STONE_ONE_KEY_TOS_TYPE_FIELD.default_value = 0
M_STONE_ONE_KEY_TOS_TYPE_FIELD.type = 5
M_STONE_ONE_KEY_TOS_TYPE_FIELD.cpp_type = 1

M_STONE_ONE_KEY_TOS_ID_LIST_FIELD.name = "id_list"
M_STONE_ONE_KEY_TOS_ID_LIST_FIELD.full_name = ".m_stone_one_key_tos.id_list"
M_STONE_ONE_KEY_TOS_ID_LIST_FIELD.number = 2
M_STONE_ONE_KEY_TOS_ID_LIST_FIELD.index = 1
M_STONE_ONE_KEY_TOS_ID_LIST_FIELD.label = 3
M_STONE_ONE_KEY_TOS_ID_LIST_FIELD.has_default_value = false
M_STONE_ONE_KEY_TOS_ID_LIST_FIELD.default_value = {}
M_STONE_ONE_KEY_TOS_ID_LIST_FIELD.type = 5
M_STONE_ONE_KEY_TOS_ID_LIST_FIELD.cpp_type = 1

M_STONE_ONE_KEY_TOS.name = "m_stone_one_key_tos"
M_STONE_ONE_KEY_TOS.full_name = ".m_stone_one_key_tos"
M_STONE_ONE_KEY_TOS.nested_types = {}
M_STONE_ONE_KEY_TOS.enum_types = {}
M_STONE_ONE_KEY_TOS.fields = {M_STONE_ONE_KEY_TOS_TYPE_FIELD, M_STONE_ONE_KEY_TOS_ID_LIST_FIELD}
M_STONE_ONE_KEY_TOS.is_extendable = false
M_STONE_ONE_KEY_TOS.extensions = {}

m_stone_one_key_tos = protobuf.Message(M_STONE_ONE_KEY_TOS)
