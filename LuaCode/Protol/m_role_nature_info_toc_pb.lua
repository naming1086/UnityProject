--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
local p_nature_place_pb = require("Protol.p_nature_place_pb")
module('Protol.m_role_nature_info_toc_pb')

M_ROLE_NATURE_INFO_TOC = protobuf.Descriptor();
M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD = protobuf.FieldDescriptor();
M_ROLE_NATURE_INFO_TOC_STAR_FIELD = protobuf.FieldDescriptor();
M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD = protobuf.FieldDescriptor();
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD = protobuf.FieldDescriptor();
M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD = protobuf.FieldDescriptor();

M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD.name = "quality"
M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD.full_name = ".m_role_nature_info_toc.quality"
M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD.number = 1
M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD.index = 0
M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD.label = 1
M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD.has_default_value = true
M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD.default_value = 0
M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD.type = 5
M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD.cpp_type = 1

M_ROLE_NATURE_INFO_TOC_STAR_FIELD.name = "star"
M_ROLE_NATURE_INFO_TOC_STAR_FIELD.full_name = ".m_role_nature_info_toc.star"
M_ROLE_NATURE_INFO_TOC_STAR_FIELD.number = 2
M_ROLE_NATURE_INFO_TOC_STAR_FIELD.index = 1
M_ROLE_NATURE_INFO_TOC_STAR_FIELD.label = 1
M_ROLE_NATURE_INFO_TOC_STAR_FIELD.has_default_value = true
M_ROLE_NATURE_INFO_TOC_STAR_FIELD.default_value = 0
M_ROLE_NATURE_INFO_TOC_STAR_FIELD.type = 5
M_ROLE_NATURE_INFO_TOC_STAR_FIELD.cpp_type = 1

M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD.name = "consume_money"
M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD.full_name = ".m_role_nature_info_toc.consume_money"
M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD.number = 3
M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD.index = 2
M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD.label = 1
M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD.has_default_value = true
M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD.default_value = 0
M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD.type = 5
M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD.cpp_type = 1

M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.name = "nature_place"
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.full_name = ".m_role_nature_info_toc.nature_place"
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.number = 4
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.index = 3
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.label = 3
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.has_default_value = false
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.default_value = {}
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.message_type = p_nature_place_pb.P_NATURE_PLACE
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.type = 11
M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD.cpp_type = 10

M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD.name = "book_list"
M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD.full_name = ".m_role_nature_info_toc.book_list"
M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD.number = 5
M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD.index = 4
M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD.label = 3
M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD.has_default_value = false
M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD.default_value = {}
M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD.type = 5
M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD.cpp_type = 1

M_ROLE_NATURE_INFO_TOC.name = "m_role_nature_info_toc"
M_ROLE_NATURE_INFO_TOC.full_name = ".m_role_nature_info_toc"
M_ROLE_NATURE_INFO_TOC.nested_types = {}
M_ROLE_NATURE_INFO_TOC.enum_types = {}
M_ROLE_NATURE_INFO_TOC.fields = {M_ROLE_NATURE_INFO_TOC_QUALITY_FIELD, M_ROLE_NATURE_INFO_TOC_STAR_FIELD, M_ROLE_NATURE_INFO_TOC_CONSUME_MONEY_FIELD, M_ROLE_NATURE_INFO_TOC_NATURE_PLACE_FIELD, M_ROLE_NATURE_INFO_TOC_BOOK_LIST_FIELD}
M_ROLE_NATURE_INFO_TOC.is_extendable = false
M_ROLE_NATURE_INFO_TOC.extensions = {}

m_role_nature_info_toc = protobuf.Message(M_ROLE_NATURE_INFO_TOC)
