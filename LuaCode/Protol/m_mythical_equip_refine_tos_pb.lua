--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_mythical_equip_refine_tos_pb')

M_MYTHICAL_EQUIP_REFINE_TOS = protobuf.Descriptor();
M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD = protobuf.FieldDescriptor();
M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD = protobuf.FieldDescriptor();
M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD = protobuf.FieldDescriptor();
M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD = protobuf.FieldDescriptor();

M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD.name = "soul_id"
M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD.full_name = ".m_mythical_equip_refine_tos.soul_id"
M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD.number = 1
M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD.index = 0
M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD.label = 1
M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD.has_default_value = true
M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD.default_value = 0
M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD.type = 5
M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD.cpp_type = 1

M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD.name = "id"
M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD.full_name = ".m_mythical_equip_refine_tos.id"
M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD.number = 2
M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD.index = 1
M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD.label = 1
M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD.has_default_value = true
M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD.default_value = 0
M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD.type = 3
M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD.cpp_type = 2

M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD.name = "material_list"
M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD.full_name = ".m_mythical_equip_refine_tos.material_list"
M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD.number = 3
M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD.index = 2
M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD.label = 3
M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD.has_default_value = false
M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD.default_value = {}
M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD.type = 3
M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD.cpp_type = 2

M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD.name = "is_double"
M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD.full_name = ".m_mythical_equip_refine_tos.is_double"
M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD.number = 4
M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD.index = 3
M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD.label = 1
M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD.has_default_value = true
M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD.default_value = true
M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD.type = 8
M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD.cpp_type = 7

M_MYTHICAL_EQUIP_REFINE_TOS.name = "m_mythical_equip_refine_tos"
M_MYTHICAL_EQUIP_REFINE_TOS.full_name = ".m_mythical_equip_refine_tos"
M_MYTHICAL_EQUIP_REFINE_TOS.nested_types = {}
M_MYTHICAL_EQUIP_REFINE_TOS.enum_types = {}
M_MYTHICAL_EQUIP_REFINE_TOS.fields = {M_MYTHICAL_EQUIP_REFINE_TOS_SOUL_ID_FIELD, M_MYTHICAL_EQUIP_REFINE_TOS_ID_FIELD, M_MYTHICAL_EQUIP_REFINE_TOS_MATERIAL_LIST_FIELD, M_MYTHICAL_EQUIP_REFINE_TOS_IS_DOUBLE_FIELD}
M_MYTHICAL_EQUIP_REFINE_TOS.is_extendable = false
M_MYTHICAL_EQUIP_REFINE_TOS.extensions = {}

m_mythical_equip_refine_tos = protobuf.Message(M_MYTHICAL_EQUIP_REFINE_TOS)
