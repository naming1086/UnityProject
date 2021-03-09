-module(cfg_copy_mission_td).
-include("config.hrl").
-export[find/1].
-compile({parse_transform, config_pt}).
?CFG_H

?C(2050101, {c_copy_single_td,2050101,"203009,5","203009,5","203009,5",[-880,950,180],4,"203019,-686,660,180;203019,-1161,660,180"})
?C(2050102, {c_copy_single_td,2050102,"","203011,1","",[],0,""})
?C(2050103, {c_copy_single_td,2050103,"203013,5","203013,5","203013,5",[],4,""})
?C(2050104, {c_copy_single_td,2050104,"","203014,1","",[],0,""})
?C(2050105, {c_copy_single_td,2050105,"203016,5","203016,5","203016,5",[],4,""})
?C(2050106, {c_copy_single_td,2050106,"","203017,1","",[],0,""})
?CFG_E.