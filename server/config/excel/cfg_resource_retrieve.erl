-module(cfg_resource_retrieve).
-include("config.hrl").
-export[find/1].
-compile({parse_transform, config_pt}).
?CFG_H

?C(1, {c_resource_retrieve,1,"青竹院",[1,1],10,2,250,"",20001,0,10,[60,110,210,260,310,410,510,660,660,660,660,660,660]})
?C(2, {c_resource_retrieve,2,"幽魂林",[1,15],6,2,10,"35021,2,1",20701,200000,10,[50]})
?C(3, {c_resource_retrieve,3,"失落谷",[1,7],4,2,9,"",20301,200000,10,[50]})
?C(4, {c_resource_retrieve,4,"百湾角",[1,2],4,2,8,"",20101,200000,10,[50]})
?C(5, {c_resource_retrieve,5,"装备副本",[1,3],6,0,18,"",20201,200000,10,[]})
?C(6, {c_resource_retrieve,6,"日常任务",[2,3],20,0,145,"1,20000,1",0,300000,15,[]})
?C(7, {c_resource_retrieve,7,"蜀山论道",[3,10004],1,0,80,"30331,6,1",0,200000,10,[]})
?C(8, {c_resource_retrieve,8,"逍遥神坛",[3,10008],1,0,90,"30331,8,1;30332,4,1",0,200000,10,[]})
?C(9, {c_resource_retrieve,9,"诛仙战场",[3,10001],1,0,85,"30321,8,1;30322,4,1",0,200000,10,[]})
?C(10, {c_resource_retrieve,10,"道庭晚宴",[3,10006],1,0,95,"13,2000,1;35106,6,1",0,200000,10,[]})
?C(11, {c_resource_retrieve,11,"决斗场",[4],20,0,60,"11,1000,1",0,200000,10,[]})
?C(12, {c_resource_retrieve,12,"护送任务",[5],5,0,120,"1,100000,1",0,400000,20,[]})
?C(13, {c_resource_retrieve,13,"守卫道庭",[3,10003],1,0,170,"",0,400000,20,[]})
?C(14, {c_resource_retrieve,14,"闭关修炼",[6],18,0,140,"",0,0,10,[]})
?C(15, {c_resource_retrieve,15,"世界BOSS",[7],8,0,1,"6100001,1,1;3004,1,1;71610,1,1",0,0,20,[]})
?CFG_E.