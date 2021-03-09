--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
local p_kv_pb = require("Protol.p_kv_pb")
module('Protol.p_daily_buy_pb')

P_DAILY_BUY = protobuf.Descriptor();
P_DAILY_BUY_ID_FIELD = protobuf.FieldDescriptor();
P_DAILY_BUY_END_TIME_FIELD = protobuf.FieldDescriptor();
P_DAILY_BUY_GOODS_LIST_FIELD = protobuf.FieldDescriptor();
P_DAILY_BUY_ASSET_TYPE_FIELD = protobuf.FieldDescriptor();
P_DAILY_BUY_OLD_PRICE_FIELD = protobuf.FieldDescriptor();
P_DAILY_BUY_NOW_PRICE_FIELD = protobuf.FieldDescriptor();
P_DAILY_BUY_DISCOUNT_FIELD = protobuf.FieldDescriptor();

P_DAILY_BUY_ID_FIELD.name = "id"
P_DAILY_BUY_ID_FIELD.full_name = ".p_daily_buy.id"
P_DAILY_BUY_ID_FIELD.number = 1
P_DAILY_BUY_ID_FIELD.index = 0
P_DAILY_BUY_ID_FIELD.label = 1
P_DAILY_BUY_ID_FIELD.has_default_value = true
P_DAILY_BUY_ID_FIELD.default_value = 0
P_DAILY_BUY_ID_FIELD.type = 5
P_DAILY_BUY_ID_FIELD.cpp_type = 1

P_DAILY_BUY_END_TIME_FIELD.name = "end_time"
P_DAILY_BUY_END_TIME_FIELD.full_name = ".p_daily_buy.end_time"
P_DAILY_BUY_END_TIME_FIELD.number = 2
P_DAILY_BUY_END_TIME_FIELD.index = 1
P_DAILY_BUY_END_TIME_FIELD.label = 1
P_DAILY_BUY_END_TIME_FIELD.has_default_value = true
P_DAILY_BUY_END_TIME_FIELD.default_value = 0
P_DAILY_BUY_END_TIME_FIELD.type = 5
P_DAILY_BUY_END_TIME_FIELD.cpp_type = 1

P_DAILY_BUY_GOODS_LIST_FIELD.name = "goods_list"
P_DAILY_BUY_GOODS_LIST_FIELD.full_name = ".p_daily_buy.goods_list"
P_DAILY_BUY_GOODS_LIST_FIELD.number = 3
P_DAILY_BUY_GOODS_LIST_FIELD.index = 2
P_DAILY_BUY_GOODS_LIST_FIELD.label = 3
P_DAILY_BUY_GOODS_LIST_FIELD.has_default_value = false
P_DAILY_BUY_GOODS_LIST_FIELD.default_value = {}
P_DAILY_BUY_GOODS_LIST_FIELD.message_type = p_kv_pb.P_KV
P_DAILY_BUY_GOODS_LIST_FIELD.type = 11
P_DAILY_BUY_GOODS_LIST_FIELD.cpp_type = 10

P_DAILY_BUY_ASSET_TYPE_FIELD.name = "asset_type"
P_DAILY_BUY_ASSET_TYPE_FIELD.full_name = ".p_daily_buy.asset_type"
P_DAILY_BUY_ASSET_TYPE_FIELD.number = 4
P_DAILY_BUY_ASSET_TYPE_FIELD.index = 3
P_DAILY_BUY_ASSET_TYPE_FIELD.label = 1
P_DAILY_BUY_ASSET_TYPE_FIELD.has_default_value = true
P_DAILY_BUY_ASSET_TYPE_FIELD.default_value = 0
P_DAILY_BUY_ASSET_TYPE_FIELD.type = 5
P_DAILY_BUY_ASSET_TYPE_FIELD.cpp_type = 1

P_DAILY_BUY_OLD_PRICE_FIELD.name = "old_price"
P_DAILY_BUY_OLD_PRICE_FIELD.full_name = ".p_daily_buy.old_price"
P_DAILY_BUY_OLD_PRICE_FIELD.number = 5
P_DAILY_BUY_OLD_PRICE_FIELD.index = 4
P_DAILY_BUY_OLD_PRICE_FIELD.label = 1
P_DAILY_BUY_OLD_PRICE_FIELD.has_default_value = true
P_DAILY_BUY_OLD_PRICE_FIELD.default_value = 0
P_DAILY_BUY_OLD_PRICE_FIELD.type = 5
P_DAILY_BUY_OLD_PRICE_FIELD.cpp_type = 1

P_DAILY_BUY_NOW_PRICE_FIELD.name = "now_price"
P_DAILY_BUY_NOW_PRICE_FIELD.full_name = ".p_daily_buy.now_price"
P_DAILY_BUY_NOW_PRICE_FIELD.number = 6
P_DAILY_BUY_NOW_PRICE_FIELD.index = 5
P_DAILY_BUY_NOW_PRICE_FIELD.label = 1
P_DAILY_BUY_NOW_PRICE_FIELD.has_default_value = true
P_DAILY_BUY_NOW_PRICE_FIELD.default_value = 0
P_DAILY_BUY_NOW_PRICE_FIELD.type = 5
P_DAILY_BUY_NOW_PRICE_FIELD.cpp_type = 1

P_DAILY_BUY_DISCOUNT_FIELD.name = "discount"
P_DAILY_BUY_DISCOUNT_FIELD.full_name = ".p_daily_buy.discount"
P_DAILY_BUY_DISCOUNT_FIELD.number = 7
P_DAILY_BUY_DISCOUNT_FIELD.index = 6
P_DAILY_BUY_DISCOUNT_FIELD.label = 1
P_DAILY_BUY_DISCOUNT_FIELD.has_default_value = true
P_DAILY_BUY_DISCOUNT_FIELD.default_value = 0
P_DAILY_BUY_DISCOUNT_FIELD.type = 5
P_DAILY_BUY_DISCOUNT_FIELD.cpp_type = 1

P_DAILY_BUY.name = "p_daily_buy"
P_DAILY_BUY.full_name = ".p_daily_buy"
P_DAILY_BUY.nested_types = {}
P_DAILY_BUY.enum_types = {}
P_DAILY_BUY.fields = {P_DAILY_BUY_ID_FIELD, P_DAILY_BUY_END_TIME_FIELD, P_DAILY_BUY_GOODS_LIST_FIELD, P_DAILY_BUY_ASSET_TYPE_FIELD, P_DAILY_BUY_OLD_PRICE_FIELD, P_DAILY_BUY_NOW_PRICE_FIELD, P_DAILY_BUY_DISCOUNT_FIELD}
P_DAILY_BUY.is_extendable = false
P_DAILY_BUY.extensions = {}

p_daily_buy = protobuf.Message(P_DAILY_BUY)
