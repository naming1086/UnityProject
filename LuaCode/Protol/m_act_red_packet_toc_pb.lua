--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
local p_act_red_packet_pb = require("Protol.p_act_red_packet_pb")
module('Protol.m_act_red_packet_toc_pb')

M_ACT_RED_PACKET_TOC = protobuf.Descriptor();
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD = protobuf.FieldDescriptor();

M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.name = "red_packets"
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.full_name = ".m_act_red_packet_toc.red_packets"
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.number = 1
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.index = 0
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.label = 3
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.has_default_value = false
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.default_value = {}
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.message_type = p_act_red_packet_pb.P_ACT_RED_PACKET
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.type = 11
M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD.cpp_type = 10

M_ACT_RED_PACKET_TOC.name = "m_act_red_packet_toc"
M_ACT_RED_PACKET_TOC.full_name = ".m_act_red_packet_toc"
M_ACT_RED_PACKET_TOC.nested_types = {}
M_ACT_RED_PACKET_TOC.enum_types = {}
M_ACT_RED_PACKET_TOC.fields = {M_ACT_RED_PACKET_TOC_RED_PACKETS_FIELD}
M_ACT_RED_PACKET_TOC.is_extendable = false
M_ACT_RED_PACKET_TOC.extensions = {}

m_act_red_packet_toc = protobuf.Message(M_ACT_RED_PACKET_TOC)
