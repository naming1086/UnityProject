--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_bag_grid_open_toc_pb')

M_BAG_GRID_OPEN_TOC = protobuf.Descriptor();
M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD = protobuf.FieldDescriptor();
M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD = protobuf.FieldDescriptor();
M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD = protobuf.FieldDescriptor();

M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD.name = "err_code"
M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD.full_name = ".m_bag_grid_open_toc.err_code"
M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD.number = 1
M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD.index = 0
M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD.label = 1
M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD.has_default_value = true
M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD.default_value = 0
M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD.type = 5
M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD.cpp_type = 1

M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD.name = "bag_id"
M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD.full_name = ".m_bag_grid_open_toc.bag_id"
M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD.number = 2
M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD.index = 1
M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD.label = 1
M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD.has_default_value = true
M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD.default_value = 0
M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD.type = 5
M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD.cpp_type = 1

M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD.name = "bag_grid"
M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD.full_name = ".m_bag_grid_open_toc.bag_grid"
M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD.number = 3
M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD.index = 2
M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD.label = 1
M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD.has_default_value = true
M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD.default_value = 0
M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD.type = 5
M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD.cpp_type = 1

M_BAG_GRID_OPEN_TOC.name = "m_bag_grid_open_toc"
M_BAG_GRID_OPEN_TOC.full_name = ".m_bag_grid_open_toc"
M_BAG_GRID_OPEN_TOC.nested_types = {}
M_BAG_GRID_OPEN_TOC.enum_types = {}
M_BAG_GRID_OPEN_TOC.fields = {M_BAG_GRID_OPEN_TOC_ERR_CODE_FIELD, M_BAG_GRID_OPEN_TOC_BAG_ID_FIELD, M_BAG_GRID_OPEN_TOC_BAG_GRID_FIELD}
M_BAG_GRID_OPEN_TOC.is_extendable = false
M_BAG_GRID_OPEN_TOC.extensions = {}

m_bag_grid_open_toc = protobuf.Message(M_BAG_GRID_OPEN_TOC)
