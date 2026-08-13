scoreboard players set *wooltime wooltime 1800
execute store result score *wool wool run random value 0..6
summon sheep 595 194 127 {Tags:[wool],Health:40}
effect give @e[tag=wool] slow_falling 8 3
effect give @e[tag=wool] glowing infinite
effect give @e[tag=wool] resistance infinite 3
effect give @e[tag=wool] speed infinite 3
title @a title "绵羊已经随机刷新在场地上!"
execute if score *wool wool matches 1 run tp @e[tag=wool,limit=1] 552 193 85
execute if score *wool wool matches 2 run tp @e[tag=wool,limit=1] 596 193 100
execute if score *wool wool matches 3 run tp @e[tag=wool,limit=1] 570 194 125
execute if score *wool wool matches 4 run tp @e[tag=wool,limit=1] 595 194 156
execute if score *wool wool matches 5 run tp @e[tag=wool,limit=1] 619 194 129
execute if score *wool wool matches 6 run tp @e[tag=wool,limit=1] 636 194 166
give @a[team=blue] light_blue_dye 1
give @a[team=red] red_dye 1