--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
local p_resource_pb = require("Protol.p_resource_pb")
module('Protol.m_resource_info_toc_pb')

M_RESOURCE_INFO_TOC = protobuf.Descriptor();
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD = protobuf.FieldDescriptor();

M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.name = "resource_list"
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.full_name = ".m_resource_info_toc.resource_list"
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.number = 1
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.index = 0
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.label = 3
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.has_default_value = false
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.default_value = {}
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.message_type = p_resource_pb.P_RESOURCE
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.type = 11
M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD.cpp_type = 10

M_RESOURCE_INFO_TOC.name = "m_resource_info_toc"
M_RESOURCE_INFO_TOC.full_name = ".m_resource_info_toc"
M_RESOURCE_INFO_TOC.nested_types = {}
M_RESOURCE_INFO_TOC.enum_types = {}
M_RESOURCE_INFO_TOC.fields = {M_RESOURCE_INFO_TOC_RESOURCE_LIST_FIELD}
M_RESOURCE_INFO_TOC.is_extendable = false
M_RESOURCE_INFO_TOC.extensions = {}

m_resource_info_toc = protobuf.Message(M_RESOURCE_INFO_TOC)
