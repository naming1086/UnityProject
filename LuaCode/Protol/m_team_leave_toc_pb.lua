--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_team_leave_toc_pb')

M_TEAM_LEAVE_TOC = protobuf.Descriptor();
M_TEAM_LEAVE_TOC_ERR_CODE_FIELD = protobuf.FieldDescriptor();

M_TEAM_LEAVE_TOC_ERR_CODE_FIELD.name = "err_code"
M_TEAM_LEAVE_TOC_ERR_CODE_FIELD.full_name = ".m_team_leave_toc.err_code"
M_TEAM_LEAVE_TOC_ERR_CODE_FIELD.number = 1
M_TEAM_LEAVE_TOC_ERR_CODE_FIELD.index = 0
M_TEAM_LEAVE_TOC_ERR_CODE_FIELD.label = 1
M_TEAM_LEAVE_TOC_ERR_CODE_FIELD.has_default_value = true
M_TEAM_LEAVE_TOC_ERR_CODE_FIELD.default_value = 0
M_TEAM_LEAVE_TOC_ERR_CODE_FIELD.type = 5
M_TEAM_LEAVE_TOC_ERR_CODE_FIELD.cpp_type = 1

M_TEAM_LEAVE_TOC.name = "m_team_leave_toc"
M_TEAM_LEAVE_TOC.full_name = ".m_team_leave_toc"
M_TEAM_LEAVE_TOC.nested_types = {}
M_TEAM_LEAVE_TOC.enum_types = {}
M_TEAM_LEAVE_TOC.fields = {M_TEAM_LEAVE_TOC_ERR_CODE_FIELD}
M_TEAM_LEAVE_TOC.is_extendable = false
M_TEAM_LEAVE_TOC.extensions = {}

m_team_leave_toc = protobuf.Message(M_TEAM_LEAVE_TOC)
