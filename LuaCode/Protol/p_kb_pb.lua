--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.p_kb_pb')

P_KB = protobuf.Descriptor();
P_KB_ID_FIELD = protobuf.FieldDescriptor();
P_KB_VAL_FIELD = protobuf.FieldDescriptor();

P_KB_ID_FIELD.name = "id"
P_KB_ID_FIELD.full_name = ".p_kb.id"
P_KB_ID_FIELD.number = 1
P_KB_ID_FIELD.index = 0
P_KB_ID_FIELD.label = 1
P_KB_ID_FIELD.has_default_value = true
P_KB_ID_FIELD.default_value = 0
P_KB_ID_FIELD.type = 5
P_KB_ID_FIELD.cpp_type = 1

P_KB_VAL_FIELD.name = "val"
P_KB_VAL_FIELD.full_name = ".p_kb.val"
P_KB_VAL_FIELD.number = 2
P_KB_VAL_FIELD.index = 1
P_KB_VAL_FIELD.label = 1
P_KB_VAL_FIELD.has_default_value = true
P_KB_VAL_FIELD.default_value = true
P_KB_VAL_FIELD.type = 8
P_KB_VAL_FIELD.cpp_type = 7

P_KB.name = "p_kb"
P_KB.full_name = ".p_kb"
P_KB.nested_types = {}
P_KB.enum_types = {}
P_KB.fields = {P_KB_ID_FIELD, P_KB_VAL_FIELD}
P_KB.is_extendable = false
P_KB.extensions = {}

p_kb = protobuf.Message(P_KB)
