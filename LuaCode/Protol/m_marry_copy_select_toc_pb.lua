--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_marry_copy_select_toc_pb')

M_MARRY_COPY_SELECT_TOC = protobuf.Descriptor();
M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD = protobuf.FieldDescriptor();
M_MARRY_COPY_SELECT_TOC_ITEM_FIELD = protobuf.FieldDescriptor();

M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD.name = "err_code"
M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD.full_name = ".m_marry_copy_select_toc.err_code"
M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD.number = 1
M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD.index = 0
M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD.label = 1
M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD.has_default_value = true
M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD.default_value = 0
M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD.type = 5
M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD.cpp_type = 1

M_MARRY_COPY_SELECT_TOC_ITEM_FIELD.name = "item"
M_MARRY_COPY_SELECT_TOC_ITEM_FIELD.full_name = ".m_marry_copy_select_toc.item"
M_MARRY_COPY_SELECT_TOC_ITEM_FIELD.number = 2
M_MARRY_COPY_SELECT_TOC_ITEM_FIELD.index = 1
M_MARRY_COPY_SELECT_TOC_ITEM_FIELD.label = 1
M_MARRY_COPY_SELECT_TOC_ITEM_FIELD.has_default_value = true
M_MARRY_COPY_SELECT_TOC_ITEM_FIELD.default_value = 0
M_MARRY_COPY_SELECT_TOC_ITEM_FIELD.type = 5
M_MARRY_COPY_SELECT_TOC_ITEM_FIELD.cpp_type = 1

M_MARRY_COPY_SELECT_TOC.name = "m_marry_copy_select_toc"
M_MARRY_COPY_SELECT_TOC.full_name = ".m_marry_copy_select_toc"
M_MARRY_COPY_SELECT_TOC.nested_types = {}
M_MARRY_COPY_SELECT_TOC.enum_types = {}
M_MARRY_COPY_SELECT_TOC.fields = {M_MARRY_COPY_SELECT_TOC_ERR_CODE_FIELD, M_MARRY_COPY_SELECT_TOC_ITEM_FIELD}
M_MARRY_COPY_SELECT_TOC.is_extendable = false
M_MARRY_COPY_SELECT_TOC.extensions = {}

m_marry_copy_select_toc = protobuf.Message(M_MARRY_COPY_SELECT_TOC)
