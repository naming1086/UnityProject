--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_offline_solo_detail_toc_pb')

M_OFFLINE_SOLO_DETAIL_TOC = protobuf.Descriptor();
M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD = protobuf.FieldDescriptor();
M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD = protobuf.FieldDescriptor();
M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD = protobuf.FieldDescriptor();
M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD = protobuf.FieldDescriptor();

M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD.name = "challenge_times"
M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD.full_name = ".m_offline_solo_detail_toc.challenge_times"
M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD.number = 1
M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD.index = 0
M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD.label = 1
M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD.has_default_value = true
M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD.default_value = 0
M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD.type = 5
M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD.cpp_type = 1

M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD.name = "buy_times"
M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD.full_name = ".m_offline_solo_detail_toc.buy_times"
M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD.number = 2
M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD.index = 1
M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD.label = 1
M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD.has_default_value = true
M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD.default_value = 0
M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD.type = 5
M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD.cpp_type = 1

M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD.name = "is_reward"
M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD.full_name = ".m_offline_solo_detail_toc.is_reward"
M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD.number = 3
M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD.index = 2
M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD.label = 1
M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD.has_default_value = true
M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD.default_value = true
M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD.type = 8
M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD.cpp_type = 7

M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD.name = "bestir_times"
M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD.full_name = ".m_offline_solo_detail_toc.bestir_times"
M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD.number = 4
M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD.index = 3
M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD.label = 1
M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD.has_default_value = true
M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD.default_value = 0
M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD.type = 5
M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD.cpp_type = 1

M_OFFLINE_SOLO_DETAIL_TOC.name = "m_offline_solo_detail_toc"
M_OFFLINE_SOLO_DETAIL_TOC.full_name = ".m_offline_solo_detail_toc"
M_OFFLINE_SOLO_DETAIL_TOC.nested_types = {}
M_OFFLINE_SOLO_DETAIL_TOC.enum_types = {}
M_OFFLINE_SOLO_DETAIL_TOC.fields = {M_OFFLINE_SOLO_DETAIL_TOC_CHALLENGE_TIMES_FIELD, M_OFFLINE_SOLO_DETAIL_TOC_BUY_TIMES_FIELD, M_OFFLINE_SOLO_DETAIL_TOC_IS_REWARD_FIELD, M_OFFLINE_SOLO_DETAIL_TOC_BESTIR_TIMES_FIELD}
M_OFFLINE_SOLO_DETAIL_TOC.is_extendable = false
M_OFFLINE_SOLO_DETAIL_TOC.extensions = {}

m_offline_solo_detail_toc = protobuf.Message(M_OFFLINE_SOLO_DETAIL_TOC)
