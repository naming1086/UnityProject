--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.p_immortal_soul_pb')

P_IMMORTAL_SOUL = protobuf.Descriptor();
P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD = protobuf.FieldDescriptor();
P_IMMORTAL_SOUL_LEVEL_ID_FIELD = protobuf.FieldDescriptor();
P_IMMORTAL_SOUL_INDEX_FIELD = protobuf.FieldDescriptor();

P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD.name = "immortal_soul_id"
P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD.full_name = ".p_immortal_soul.immortal_soul_id"
P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD.number = 1
P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD.index = 0
P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD.label = 1
P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD.has_default_value = true
P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD.default_value = 0
P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD.type = 5
P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD.cpp_type = 1

P_IMMORTAL_SOUL_LEVEL_ID_FIELD.name = "level_id"
P_IMMORTAL_SOUL_LEVEL_ID_FIELD.full_name = ".p_immortal_soul.level_id"
P_IMMORTAL_SOUL_LEVEL_ID_FIELD.number = 2
P_IMMORTAL_SOUL_LEVEL_ID_FIELD.index = 1
P_IMMORTAL_SOUL_LEVEL_ID_FIELD.label = 1
P_IMMORTAL_SOUL_LEVEL_ID_FIELD.has_default_value = true
P_IMMORTAL_SOUL_LEVEL_ID_FIELD.default_value = 0
P_IMMORTAL_SOUL_LEVEL_ID_FIELD.type = 5
P_IMMORTAL_SOUL_LEVEL_ID_FIELD.cpp_type = 1

P_IMMORTAL_SOUL_INDEX_FIELD.name = "index"
P_IMMORTAL_SOUL_INDEX_FIELD.full_name = ".p_immortal_soul.index"
P_IMMORTAL_SOUL_INDEX_FIELD.number = 3
P_IMMORTAL_SOUL_INDEX_FIELD.index = 2
P_IMMORTAL_SOUL_INDEX_FIELD.label = 1
P_IMMORTAL_SOUL_INDEX_FIELD.has_default_value = true
P_IMMORTAL_SOUL_INDEX_FIELD.default_value = 0
P_IMMORTAL_SOUL_INDEX_FIELD.type = 5
P_IMMORTAL_SOUL_INDEX_FIELD.cpp_type = 1

P_IMMORTAL_SOUL.name = "p_immortal_soul"
P_IMMORTAL_SOUL.full_name = ".p_immortal_soul"
P_IMMORTAL_SOUL.nested_types = {}
P_IMMORTAL_SOUL.enum_types = {}
P_IMMORTAL_SOUL.fields = {P_IMMORTAL_SOUL_IMMORTAL_SOUL_ID_FIELD, P_IMMORTAL_SOUL_LEVEL_ID_FIELD, P_IMMORTAL_SOUL_INDEX_FIELD}
P_IMMORTAL_SOUL.is_extendable = false
P_IMMORTAL_SOUL.extensions = {}

p_immortal_soul = protobuf.Message(P_IMMORTAL_SOUL)
