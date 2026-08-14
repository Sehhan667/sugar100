scoreboard players set *InMLGGame InMLGGame 1
gamerule immediate_respawn true
clear @a[team=blue]
clear @a[team=red]
#execute as @a[team=blue] run function zhanqiao:give/blue
#execute as @a[team=red] run function zhanqiao:give/red

title @a subtitle {"text":"没有伤害，只有击退，通过破坏对面的床来获得胜利","color":"yellow"}
title @a title {"text":"游戏开始","color":"blue"}
scoreboard players set *红队 score 0
scoreboard players set *蓝队 score 0
function zhanqiao:reset
gamemode survival @a
scoreboard objectives add mlgauto dummy
execute if score *ifoldpvp ifoldpvp matches 0 run scoreboard players set *mlgauto mlgauto 1
execute if score *mlgauto mlgauto matches 1 run scoreboard players set *ifoldpvp ifoldpvp 1
function zhanqiao:wait/wait