--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
local p_pellet_medicine_pb = require("Protol.p_pellet_medicine_pb")
module('Protol.m_role_pellet_medicine_use_toc_pb')

M_ROLE_PELLET_MEDICINE_USE_TOC = protobuf.Descriptor();
M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD = protobuf.FieldDescriptor();
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD = protobuf.FieldDescriptor();

M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD.name = "err_code"
M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD.full_name = ".m_role_pellet_medicine_use_toc.err_code"
M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD.number = 1
M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD.index = 0
M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD.label = 1
M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD.has_default_value = true
M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD.default_value = 0
M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD.type = 5
M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD.cpp_type = 1

M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.name = "medicine"
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.full_name = ".m_role_pellet_medicine_use_toc.medicine"
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.number = 2
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.index = 1
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.label = 3
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.has_default_value = false
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.default_value = {}
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.message_type = p_pellet_medicine_pb.P_PELLET_MEDICINE
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.type = 11
M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD.cpp_type = 10

M_ROLE_PELLET_MEDICINE_USE_TOC.name = "m_role_pellet_medicine_use_toc"
M_ROLE_PELLET_MEDICINE_USE_TOC.full_name = ".m_role_pellet_medicine_use_toc"
M_ROLE_PELLET_MEDICINE_USE_TOC.nested_types = {}
M_ROLE_PELLET_MEDICINE_USE_TOC.enum_types = {}
M_ROLE_PELLET_MEDICINE_USE_TOC.fields = {M_ROLE_PELLET_MEDICINE_USE_TOC_ERR_CODE_FIELD, M_ROLE_PELLET_MEDICINE_USE_TOC_MEDICINE_FIELD}
M_ROLE_PELLET_MEDICINE_USE_TOC.is_extendable = false
M_ROLE_PELLET_MEDICINE_USE_TOC.extensions = {}

m_role_pellet_medicine_use_toc = protobuf.Message(M_ROLE_PELLET_MEDICINE_USE_TOC)
