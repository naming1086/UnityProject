--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
local p_luckycat_log_pb = require("Protol.p_luckycat_log_pb")
module('Protol.m_luckycat_info_toc_pb')

M_LUCKYCAT_INFO_TOC = protobuf.Descriptor();
M_LUCKYCAT_INFO_TOC_LOGS_FIELD = protobuf.FieldDescriptor();
M_LUCKYCAT_INFO_TOC_TIMES_FIELD = protobuf.FieldDescriptor();

M_LUCKYCAT_INFO_TOC_LOGS_FIELD.name = "logs"
M_LUCKYCAT_INFO_TOC_LOGS_FIELD.full_name = ".m_luckycat_info_toc.logs"
M_LUCKYCAT_INFO_TOC_LOGS_FIELD.number = 1
M_LUCKYCAT_INFO_TOC_LOGS_FIELD.index = 0
M_LUCKYCAT_INFO_TOC_LOGS_FIELD.label = 3
M_LUCKYCAT_INFO_TOC_LOGS_FIELD.has_default_value = false
M_LUCKYCAT_INFO_TOC_LOGS_FIELD.default_value = {}
M_LUCKYCAT_INFO_TOC_LOGS_FIELD.message_type = p_luckycat_log_pb.P_LUCKYCAT_LOG
M_LUCKYCAT_INFO_TOC_LOGS_FIELD.type = 11
M_LUCKYCAT_INFO_TOC_LOGS_FIELD.cpp_type = 10

M_LUCKYCAT_INFO_TOC_TIMES_FIELD.name = "times"
M_LUCKYCAT_INFO_TOC_TIMES_FIELD.full_name = ".m_luckycat_info_toc.times"
M_LUCKYCAT_INFO_TOC_TIMES_FIELD.number = 2
M_LUCKYCAT_INFO_TOC_TIMES_FIELD.index = 1
M_LUCKYCAT_INFO_TOC_TIMES_FIELD.label = 1
M_LUCKYCAT_INFO_TOC_TIMES_FIELD.has_default_value = true
M_LUCKYCAT_INFO_TOC_TIMES_FIELD.default_value = 0
M_LUCKYCAT_INFO_TOC_TIMES_FIELD.type = 5
M_LUCKYCAT_INFO_TOC_TIMES_FIELD.cpp_type = 1

M_LUCKYCAT_INFO_TOC.name = "m_luckycat_info_toc"
M_LUCKYCAT_INFO_TOC.full_name = ".m_luckycat_info_toc"
M_LUCKYCAT_INFO_TOC.nested_types = {}
M_LUCKYCAT_INFO_TOC.enum_types = {}
M_LUCKYCAT_INFO_TOC.fields = {M_LUCKYCAT_INFO_TOC_LOGS_FIELD, M_LUCKYCAT_INFO_TOC_TIMES_FIELD}
M_LUCKYCAT_INFO_TOC.is_extendable = false
M_LUCKYCAT_INFO_TOC.extensions = {}

m_luckycat_info_toc = protobuf.Message(M_LUCKYCAT_INFO_TOC)
