--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_role_pay_info_toc_pb')

M_ROLE_PAY_INFO_TOC = protobuf.Descriptor();
M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD = protobuf.FieldDescriptor();
M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD = protobuf.FieldDescriptor();
M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD = protobuf.FieldDescriptor();
M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD = protobuf.FieldDescriptor();

M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD.name = "first_pay_list"
M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD.full_name = ".m_role_pay_info_toc.first_pay_list"
M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD.number = 1
M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD.index = 0
M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD.label = 3
M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD.has_default_value = false
M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD.default_value = {}
M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD.type = 5
M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD.cpp_type = 1

M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD.name = "package_days"
M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD.full_name = ".m_role_pay_info_toc.package_days"
M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD.number = 2
M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD.index = 1
M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD.label = 1
M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD.has_default_value = true
M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD.default_value = 0
M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD.type = 5
M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD.cpp_type = 1

M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD.name = "today_pay_gold"
M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD.full_name = ".m_role_pay_info_toc.today_pay_gold"
M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD.number = 3
M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD.index = 2
M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD.label = 1
M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD.has_default_value = true
M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD.default_value = 0
M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD.type = 5
M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD.cpp_type = 1

M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD.name = "total_pay_gold"
M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD.full_name = ".m_role_pay_info_toc.total_pay_gold"
M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD.number = 4
M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD.index = 3
M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD.label = 1
M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD.has_default_value = true
M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD.default_value = 0
M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD.type = 5
M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD.cpp_type = 1

M_ROLE_PAY_INFO_TOC.name = "m_role_pay_info_toc"
M_ROLE_PAY_INFO_TOC.full_name = ".m_role_pay_info_toc"
M_ROLE_PAY_INFO_TOC.nested_types = {}
M_ROLE_PAY_INFO_TOC.enum_types = {}
M_ROLE_PAY_INFO_TOC.fields = {M_ROLE_PAY_INFO_TOC_FIRST_PAY_LIST_FIELD, M_ROLE_PAY_INFO_TOC_PACKAGE_DAYS_FIELD, M_ROLE_PAY_INFO_TOC_TODAY_PAY_GOLD_FIELD, M_ROLE_PAY_INFO_TOC_TOTAL_PAY_GOLD_FIELD}
M_ROLE_PAY_INFO_TOC.is_extendable = false
M_ROLE_PAY_INFO_TOC.extensions = {}

m_role_pay_info_toc = protobuf.Message(M_ROLE_PAY_INFO_TOC)
