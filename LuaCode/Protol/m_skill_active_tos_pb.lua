--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_skill_active_tos_pb')

M_SKILL_ACTIVE_TOS = protobuf.Descriptor();
M_SKILL_ACTIVE_TOS_ID_FIELD = protobuf.FieldDescriptor();

M_SKILL_ACTIVE_TOS_ID_FIELD.name = "id"
M_SKILL_ACTIVE_TOS_ID_FIELD.full_name = ".m_skill_active_tos.id"
M_SKILL_ACTIVE_TOS_ID_FIELD.number = 1
M_SKILL_ACTIVE_TOS_ID_FIELD.index = 0
M_SKILL_ACTIVE_TOS_ID_FIELD.label = 1
M_SKILL_ACTIVE_TOS_ID_FIELD.has_default_value = true
M_SKILL_ACTIVE_TOS_ID_FIELD.default_value = 0
M_SKILL_ACTIVE_TOS_ID_FIELD.type = 5
M_SKILL_ACTIVE_TOS_ID_FIELD.cpp_type = 1

M_SKILL_ACTIVE_TOS.name = "m_skill_active_tos"
M_SKILL_ACTIVE_TOS.full_name = ".m_skill_active_tos"
M_SKILL_ACTIVE_TOS.nested_types = {}
M_SKILL_ACTIVE_TOS.enum_types = {}
M_SKILL_ACTIVE_TOS.fields = {M_SKILL_ACTIVE_TOS_ID_FIELD}
M_SKILL_ACTIVE_TOS.is_extendable = false
M_SKILL_ACTIVE_TOS.extensions = {}

m_skill_active_tos = protobuf.Message(M_SKILL_ACTIVE_TOS)
