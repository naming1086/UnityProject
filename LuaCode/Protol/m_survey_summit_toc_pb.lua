--Generated By protoc-gen-lua Do not Edit
local protobuf = require "protobuf.protobuf"
module('Protol.m_survey_summit_toc_pb')

M_SURVEY_SUMMIT_TOC = protobuf.Descriptor();
M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD = protobuf.FieldDescriptor();

M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD.name = "err_code"
M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD.full_name = ".m_survey_summit_toc.err_code"
M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD.number = 1
M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD.index = 0
M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD.label = 1
M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD.has_default_value = true
M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD.default_value = 0
M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD.type = 5
M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD.cpp_type = 1

M_SURVEY_SUMMIT_TOC.name = "m_survey_summit_toc"
M_SURVEY_SUMMIT_TOC.full_name = ".m_survey_summit_toc"
M_SURVEY_SUMMIT_TOC.nested_types = {}
M_SURVEY_SUMMIT_TOC.enum_types = {}
M_SURVEY_SUMMIT_TOC.fields = {M_SURVEY_SUMMIT_TOC_ERR_CODE_FIELD}
M_SURVEY_SUMMIT_TOC.is_extendable = false
M_SURVEY_SUMMIT_TOC.extensions = {}

m_survey_summit_toc = protobuf.Message(M_SURVEY_SUMMIT_TOC)
