--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_role_king_guard_toc_pb')

M_ROLE_KING_GUARD_TOC = protobuf.Descriptor();
M_ROLE_KING_GUARD_TOC_MONEY_FIELD = protobuf.FieldDescriptor();
M_ROLE_KING_GUARD_TOC_TYPE_FIELD = protobuf.FieldDescriptor();

M_ROLE_KING_GUARD_TOC_MONEY_FIELD.name = "money"
M_ROLE_KING_GUARD_TOC_MONEY_FIELD.full_name = ".m_role_king_guard_toc.money"
M_ROLE_KING_GUARD_TOC_MONEY_FIELD.number = 1
M_ROLE_KING_GUARD_TOC_MONEY_FIELD.index = 0
M_ROLE_KING_GUARD_TOC_MONEY_FIELD.label = 1
M_ROLE_KING_GUARD_TOC_MONEY_FIELD.has_default_value = true
M_ROLE_KING_GUARD_TOC_MONEY_FIELD.default_value = 0
M_ROLE_KING_GUARD_TOC_MONEY_FIELD.type = 5
M_ROLE_KING_GUARD_TOC_MONEY_FIELD.cpp_type = 1

M_ROLE_KING_GUARD_TOC_TYPE_FIELD.name = "type"
M_ROLE_KING_GUARD_TOC_TYPE_FIELD.full_name = ".m_role_king_guard_toc.type"
M_ROLE_KING_GUARD_TOC_TYPE_FIELD.number = 2
M_ROLE_KING_GUARD_TOC_TYPE_FIELD.index = 1
M_ROLE_KING_GUARD_TOC_TYPE_FIELD.label = 1
M_ROLE_KING_GUARD_TOC_TYPE_FIELD.has_default_value = true
M_ROLE_KING_GUARD_TOC_TYPE_FIELD.default_value = 0
M_ROLE_KING_GUARD_TOC_TYPE_FIELD.type = 5
M_ROLE_KING_GUARD_TOC_TYPE_FIELD.cpp_type = 1

M_ROLE_KING_GUARD_TOC.name = "m_role_king_guard_toc"
M_ROLE_KING_GUARD_TOC.full_name = ".m_role_king_guard_toc"
M_ROLE_KING_GUARD_TOC.nested_types = {}
M_ROLE_KING_GUARD_TOC.enum_types = {}
M_ROLE_KING_GUARD_TOC.fields = {M_ROLE_KING_GUARD_TOC_MONEY_FIELD, M_ROLE_KING_GUARD_TOC_TYPE_FIELD}
M_ROLE_KING_GUARD_TOC.is_extendable = false
M_ROLE_KING_GUARD_TOC.extensions = {}

m_role_king_guard_toc = protobuf.Message(M_ROLE_KING_GUARD_TOC)
