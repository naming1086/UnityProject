--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_daily_liveness_reward_toc_pb')

M_DAILY_LIVENESS_REWARD_TOC = protobuf.Descriptor();
M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD = protobuf.FieldDescriptor();
M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD = protobuf.FieldDescriptor();

M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD.name = "list"
M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD.full_name = ".m_daily_liveness_reward_toc.list"
M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD.number = 1
M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD.index = 0
M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD.label = 3
M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD.has_default_value = false
M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD.default_value = {}
M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD.type = 5
M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD.cpp_type = 1

M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD.name = "err_code"
M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD.full_name = ".m_daily_liveness_reward_toc.err_code"
M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD.number = 2
M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD.index = 1
M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD.label = 1
M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD.has_default_value = true
M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD.default_value = 0
M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD.type = 5
M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD.cpp_type = 1

M_DAILY_LIVENESS_REWARD_TOC.name = "m_daily_liveness_reward_toc"
M_DAILY_LIVENESS_REWARD_TOC.full_name = ".m_daily_liveness_reward_toc"
M_DAILY_LIVENESS_REWARD_TOC.nested_types = {}
M_DAILY_LIVENESS_REWARD_TOC.enum_types = {}
M_DAILY_LIVENESS_REWARD_TOC.fields = {M_DAILY_LIVENESS_REWARD_TOC_LIST_FIELD, M_DAILY_LIVENESS_REWARD_TOC_ERR_CODE_FIELD}
M_DAILY_LIVENESS_REWARD_TOC.is_extendable = false
M_DAILY_LIVENESS_REWARD_TOC.extensions = {}

m_daily_liveness_reward_toc = protobuf.Message(M_DAILY_LIVENESS_REWARD_TOC)
