--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.p_act_pb')

P_ACT = protobuf.Descriptor();
P_ACT_ID_FIELD = protobuf.FieldDescriptor();
P_ACT_VAL_FIELD = protobuf.FieldDescriptor();
P_ACT_IS_VISIBLE_FIELD = protobuf.FieldDescriptor();
P_ACT_START_TIME_FIELD = protobuf.FieldDescriptor();
P_ACT_END_TIME_FIELD = protobuf.FieldDescriptor();
P_ACT_START_DATE_FIELD = protobuf.FieldDescriptor();
P_ACT_END_DATE_FIELD = protobuf.FieldDescriptor();

P_ACT_ID_FIELD.name = "id"
P_ACT_ID_FIELD.full_name = ".p_act.id"
P_ACT_ID_FIELD.number = 1
P_ACT_ID_FIELD.index = 0
P_ACT_ID_FIELD.label = 1
P_ACT_ID_FIELD.has_default_value = true
P_ACT_ID_FIELD.default_value = 0
P_ACT_ID_FIELD.type = 5
P_ACT_ID_FIELD.cpp_type = 1

P_ACT_VAL_FIELD.name = "val"
P_ACT_VAL_FIELD.full_name = ".p_act.val"
P_ACT_VAL_FIELD.number = 2
P_ACT_VAL_FIELD.index = 1
P_ACT_VAL_FIELD.label = 1
P_ACT_VAL_FIELD.has_default_value = true
P_ACT_VAL_FIELD.default_value = 0
P_ACT_VAL_FIELD.type = 5
P_ACT_VAL_FIELD.cpp_type = 1

P_ACT_IS_VISIBLE_FIELD.name = "is_visible"
P_ACT_IS_VISIBLE_FIELD.full_name = ".p_act.is_visible"
P_ACT_IS_VISIBLE_FIELD.number = 3
P_ACT_IS_VISIBLE_FIELD.index = 2
P_ACT_IS_VISIBLE_FIELD.label = 1
P_ACT_IS_VISIBLE_FIELD.has_default_value = true
P_ACT_IS_VISIBLE_FIELD.default_value = true
P_ACT_IS_VISIBLE_FIELD.type = 8
P_ACT_IS_VISIBLE_FIELD.cpp_type = 7

P_ACT_START_TIME_FIELD.name = "start_time"
P_ACT_START_TIME_FIELD.full_name = ".p_act.start_time"
P_ACT_START_TIME_FIELD.number = 4
P_ACT_START_TIME_FIELD.index = 3
P_ACT_START_TIME_FIELD.label = 1
P_ACT_START_TIME_FIELD.has_default_value = true
P_ACT_START_TIME_FIELD.default_value = 0
P_ACT_START_TIME_FIELD.type = 5
P_ACT_START_TIME_FIELD.cpp_type = 1

P_ACT_END_TIME_FIELD.name = "end_time"
P_ACT_END_TIME_FIELD.full_name = ".p_act.end_time"
P_ACT_END_TIME_FIELD.number = 5
P_ACT_END_TIME_FIELD.index = 4
P_ACT_END_TIME_FIELD.label = 1
P_ACT_END_TIME_FIELD.has_default_value = true
P_ACT_END_TIME_FIELD.default_value = 0
P_ACT_END_TIME_FIELD.type = 5
P_ACT_END_TIME_FIELD.cpp_type = 1

P_ACT_START_DATE_FIELD.name = "start_date"
P_ACT_START_DATE_FIELD.full_name = ".p_act.start_date"
P_ACT_START_DATE_FIELD.number = 6
P_ACT_START_DATE_FIELD.index = 5
P_ACT_START_DATE_FIELD.label = 1
P_ACT_START_DATE_FIELD.has_default_value = true
P_ACT_START_DATE_FIELD.default_value = 0
P_ACT_START_DATE_FIELD.type = 5
P_ACT_START_DATE_FIELD.cpp_type = 1

P_ACT_END_DATE_FIELD.name = "end_date"
P_ACT_END_DATE_FIELD.full_name = ".p_act.end_date"
P_ACT_END_DATE_FIELD.number = 7
P_ACT_END_DATE_FIELD.index = 6
P_ACT_END_DATE_FIELD.label = 1
P_ACT_END_DATE_FIELD.has_default_value = true
P_ACT_END_DATE_FIELD.default_value = 0
P_ACT_END_DATE_FIELD.type = 5
P_ACT_END_DATE_FIELD.cpp_type = 1

P_ACT.name = "p_act"
P_ACT.full_name = ".p_act"
P_ACT.nested_types = {}
P_ACT.enum_types = {}
P_ACT.fields = {P_ACT_ID_FIELD, P_ACT_VAL_FIELD, P_ACT_IS_VISIBLE_FIELD, P_ACT_START_TIME_FIELD, P_ACT_END_TIME_FIELD, P_ACT_START_DATE_FIELD, P_ACT_END_DATE_FIELD}
P_ACT.is_extendable = false
P_ACT.extensions = {}

p_act = protobuf.Message(P_ACT)
