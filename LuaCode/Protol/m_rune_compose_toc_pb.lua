--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_rune_compose_toc_pb')

M_RUNE_COMPOSE_TOC = protobuf.Descriptor();
M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD = protobuf.FieldDescriptor();

M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD.name = "err_code"
M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD.full_name = ".m_rune_compose_toc.err_code"
M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD.number = 1
M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD.index = 0
M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD.label = 1
M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD.has_default_value = true
M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD.default_value = 0
M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD.type = 5
M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD.cpp_type = 1

M_RUNE_COMPOSE_TOC.name = "m_rune_compose_toc"
M_RUNE_COMPOSE_TOC.full_name = ".m_rune_compose_toc"
M_RUNE_COMPOSE_TOC.nested_types = {}
M_RUNE_COMPOSE_TOC.enum_types = {}
M_RUNE_COMPOSE_TOC.fields = {M_RUNE_COMPOSE_TOC_ERR_CODE_FIELD}
M_RUNE_COMPOSE_TOC.is_extendable = false
M_RUNE_COMPOSE_TOC.extensions = {}

m_rune_compose_toc = protobuf.Message(M_RUNE_COMPOSE_TOC)
