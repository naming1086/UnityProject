--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_achievement_condition_toc_pb')

M_ACHIEVEMENT_CONDITION_TOC = protobuf.Descriptor();
M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD = protobuf.FieldDescriptor();
M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD = protobuf.FieldDescriptor();
M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD = protobuf.FieldDescriptor();

M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD.name = "type"
M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD.full_name = ".m_achievement_condition_toc.type"
M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD.number = 1
M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD.index = 0
M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD.label = 1
M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD.has_default_value = true
M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD.default_value = 0
M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD.type = 5
M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD.cpp_type = 1

M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD.name = "id"
M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD.full_name = ".m_achievement_condition_toc.id"
M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD.number = 2
M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD.index = 1
M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD.label = 1
M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD.has_default_value = true
M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD.default_value = 0
M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD.type = 5
M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD.cpp_type = 1

M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD.name = "val"
M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD.full_name = ".m_achievement_condition_toc.val"
M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD.number = 3
M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD.index = 2
M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD.label = 1
M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD.has_default_value = true
M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD.default_value = 0
M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD.type = 5
M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD.cpp_type = 1

M_ACHIEVEMENT_CONDITION_TOC.name = "m_achievement_condition_toc"
M_ACHIEVEMENT_CONDITION_TOC.full_name = ".m_achievement_condition_toc"
M_ACHIEVEMENT_CONDITION_TOC.nested_types = {}
M_ACHIEVEMENT_CONDITION_TOC.enum_types = {}
M_ACHIEVEMENT_CONDITION_TOC.fields = {M_ACHIEVEMENT_CONDITION_TOC_TYPE_FIELD, M_ACHIEVEMENT_CONDITION_TOC_ID_FIELD, M_ACHIEVEMENT_CONDITION_TOC_VAL_FIELD}
M_ACHIEVEMENT_CONDITION_TOC.is_extendable = false
M_ACHIEVEMENT_CONDITION_TOC.extensions = {}

m_achievement_condition_toc = protobuf.Message(M_ACHIEVEMENT_CONDITION_TOC)
