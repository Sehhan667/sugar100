scoreboard players set *InBedGame InBedGame 1
gamerule immediate_respawn true
clear @a[team=blue]
clear @a[team=red]
#execute as @a[team=blue] run function zhanqiao:give/blue
#execute as @a[team=red] run function zhanqiao:give/red

title @a subtitle {"text":"通过破坏对面的床来获得胜利","color":"yellow"}
title @a title {"text":"游戏开始","color":"blue"}
scoreboard players set *红色 score 0
scoreboard players set *蓝队 score 0
function zhanqiao:reset
gamemode survival @a

function zhanqiao:wait/wait