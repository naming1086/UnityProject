--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
local p_week_card_pb = require("Protol.p_week_card_pb")
module('Protol.m_role_week_card_add_toc_pb')

M_ROLE_WEEK_CARD_ADD_TOC = protobuf.Descriptor();
M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD = protobuf.FieldDescriptor();
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD = protobuf.FieldDescriptor();

M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD.name = "type"
M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD.full_name = ".m_role_week_card_add_toc.type"
M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD.number = 1
M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD.index = 0
M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD.label = 1
M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD.has_default_value = true
M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD.default_value = 0
M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD.type = 5
M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD.cpp_type = 1

M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.name = "list"
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.full_name = ".m_role_week_card_add_toc.list"
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.number = 2
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.index = 1
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.label = 3
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.has_default_value = false
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.default_value = {}
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.message_type = p_week_card_pb.P_WEEK_CARD
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.type = 11
M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD.cpp_type = 10

M_ROLE_WEEK_CARD_ADD_TOC.name = "m_role_week_card_add_toc"
M_ROLE_WEEK_CARD_ADD_TOC.full_name = ".m_role_week_card_add_toc"
M_ROLE_WEEK_CARD_ADD_TOC.nested_types = {}
M_ROLE_WEEK_CARD_ADD_TOC.enum_types = {}
M_ROLE_WEEK_CARD_ADD_TOC.fields = {M_ROLE_WEEK_CARD_ADD_TOC_TYPE_FIELD, M_ROLE_WEEK_CARD_ADD_TOC_LIST_FIELD}
M_ROLE_WEEK_CARD_ADD_TOC.is_extendable = false
M_ROLE_WEEK_CARD_ADD_TOC.extensions = {}

m_role_week_card_add_toc = protobuf.Message(M_ROLE_WEEK_CARD_ADD_TOC)
