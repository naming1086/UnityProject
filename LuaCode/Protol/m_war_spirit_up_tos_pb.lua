--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_war_spirit_up_tos_pb')

M_WAR_SPIRIT_UP_TOS = protobuf.Descriptor();
M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD = protobuf.FieldDescriptor();
M_WAR_SPIRIT_UP_TOS_NUM_FIELD = protobuf.FieldDescriptor();

M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD.name = "war_spirit"
M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD.full_name = ".m_war_spirit_up_tos.war_spirit"
M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD.number = 1
M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD.index = 0
M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD.label = 1
M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD.has_default_value = true
M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD.default_value = 0
M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD.type = 5
M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD.cpp_type = 1

M_WAR_SPIRIT_UP_TOS_NUM_FIELD.name = "num"
M_WAR_SPIRIT_UP_TOS_NUM_FIELD.full_name = ".m_war_spirit_up_tos.num"
M_WAR_SPIRIT_UP_TOS_NUM_FIELD.number = 2
M_WAR_SPIRIT_UP_TOS_NUM_FIELD.index = 1
M_WAR_SPIRIT_UP_TOS_NUM_FIELD.label = 1
M_WAR_SPIRIT_UP_TOS_NUM_FIELD.has_default_value = true
M_WAR_SPIRIT_UP_TOS_NUM_FIELD.default_value = 0
M_WAR_SPIRIT_UP_TOS_NUM_FIELD.type = 5
M_WAR_SPIRIT_UP_TOS_NUM_FIELD.cpp_type = 1

M_WAR_SPIRIT_UP_TOS.name = "m_war_spirit_up_tos"
M_WAR_SPIRIT_UP_TOS.full_name = ".m_war_spirit_up_tos"
M_WAR_SPIRIT_UP_TOS.nested_types = {}
M_WAR_SPIRIT_UP_TOS.enum_types = {}
M_WAR_SPIRIT_UP_TOS.fields = {M_WAR_SPIRIT_UP_TOS_WAR_SPIRIT_FIELD, M_WAR_SPIRIT_UP_TOS_NUM_FIELD}
M_WAR_SPIRIT_UP_TOS.is_extendable = false
M_WAR_SPIRIT_UP_TOS.extensions = {}

m_war_spirit_up_tos = protobuf.Message(M_WAR_SPIRIT_UP_TOS)
