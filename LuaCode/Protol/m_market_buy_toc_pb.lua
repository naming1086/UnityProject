--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_market_buy_toc_pb')

M_MARKET_BUY_TOC = protobuf.Descriptor();
M_MARKET_BUY_TOC_ERR_CODE_FIELD = protobuf.FieldDescriptor();
M_MARKET_BUY_TOC_ID_FIELD = protobuf.FieldDescriptor();

M_MARKET_BUY_TOC_ERR_CODE_FIELD.name = "err_code"
M_MARKET_BUY_TOC_ERR_CODE_FIELD.full_name = ".m_market_buy_toc.err_code"
M_MARKET_BUY_TOC_ERR_CODE_FIELD.number = 1
M_MARKET_BUY_TOC_ERR_CODE_FIELD.index = 0
M_MARKET_BUY_TOC_ERR_CODE_FIELD.label = 1
M_MARKET_BUY_TOC_ERR_CODE_FIELD.has_default_value = true
M_MARKET_BUY_TOC_ERR_CODE_FIELD.default_value = 0
M_MARKET_BUY_TOC_ERR_CODE_FIELD.type = 5
M_MARKET_BUY_TOC_ERR_CODE_FIELD.cpp_type = 1

M_MARKET_BUY_TOC_ID_FIELD.name = "id"
M_MARKET_BUY_TOC_ID_FIELD.full_name = ".m_market_buy_toc.id"
M_MARKET_BUY_TOC_ID_FIELD.number = 2
M_MARKET_BUY_TOC_ID_FIELD.index = 1
M_MARKET_BUY_TOC_ID_FIELD.label = 1
M_MARKET_BUY_TOC_ID_FIELD.has_default_value = true
M_MARKET_BUY_TOC_ID_FIELD.default_value = 0
M_MARKET_BUY_TOC_ID_FIELD.type = 5
M_MARKET_BUY_TOC_ID_FIELD.cpp_type = 1

M_MARKET_BUY_TOC.name = "m_market_buy_toc"
M_MARKET_BUY_TOC.full_name = ".m_market_buy_toc"
M_MARKET_BUY_TOC.nested_types = {}
M_MARKET_BUY_TOC.enum_types = {}
M_MARKET_BUY_TOC.fields = {M_MARKET_BUY_TOC_ERR_CODE_FIELD, M_MARKET_BUY_TOC_ID_FIELD}
M_MARKET_BUY_TOC.is_extendable = false
M_MARKET_BUY_TOC.extensions = {}

m_market_buy_toc = protobuf.Message(M_MARKET_BUY_TOC)
