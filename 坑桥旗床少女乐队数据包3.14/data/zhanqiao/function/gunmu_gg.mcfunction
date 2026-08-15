title @a title {"text":"坑桥旗床少女乐队","color":"aqua"}
title @a subtitle {"text":"预发布版本pre-8   本来懒得更新的哈哈（"}
scoreboard players set *蓝队 score 0
scoreboard players set *红队 score 0
clear @a[team=blue]
clear @a[team=red]
function zhanqiao:resetgamescore
kill @e[type=zombie]
kill @e[tag=c4_display]
kill @e[tag=redflag_display]
kill @e[tag=blueflag_display]
tp @a 14 104 14
execute as @a at @a run spawnpoint @a 14 104 14
gamemode adventure @a
execute as @a at @s run attribute @s knockback_resistance base reset
gamemode adventure @a
#execute if score *map map matches -1 run scoreboard players set *map map 0
schedule clear zhanqiao:wait/wait
forceload remove all