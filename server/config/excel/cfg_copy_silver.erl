-module(cfg_copy_silver).
-include("config.hrl").
-export[find/1].
-compile({parse_transform, config_pt}).
?CFG_H

?C(2010101, {c_copy_wave,2010101,250001,1,0,0,"551,5955;551,5955"})
?C(2010201, {c_copy_wave,2010201,250002,1,0,0,"551,5955;551,5955"})
?C(2010301, {c_copy_wave,2010301,250003,1,0,0,"551,5955;551,5955"})
?C(2010401, {c_copy_wave,2010401,250004,1,0,0,"551,5955;551,5955"})
?C(2010501, {c_copy_wave,2010501,250005,1,0,0,"551,5955;551,5955"})
?C(2010601, {c_copy_wave,2010601,250006,1,0,0,"551,5955;551,5955"})
?C(2010701, {c_copy_wave,2010701,250007,1,0,0,"551,5955;551,5955"})
?CFG_E.