-module(cfg_mount_quality).
-include("config.hrl").
-export[find/1].
?CFG_H

?C(30302, {c_pellet,30302,"1,800","0,100|100,200|200,300|300,400|400,500|500,600|600,700"})
?C(30303, {c_pellet,30303,"3,40","0,100|100,200|200,300|300,400|400,500|500,600|600,700"})
?C(30304, {c_pellet,30304,"1,4000|3,200|36,200","0,25|100,50|200,75|300,100|400,125|500,150|600,175"})
?CFG_E.