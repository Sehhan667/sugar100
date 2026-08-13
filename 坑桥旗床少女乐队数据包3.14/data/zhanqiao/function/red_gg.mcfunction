title @a title {"text":"红队胜利","color": "red"}
scoreboard players set *蓝队 score 0
scoreboard players set *红色 score 0
clear @a[team=blue]
clear @a[team=red]
function zhanqiao:resetgamescore
kill @e[type=zombie]
kill @e[tag=c4_display]
tp @a 14 104 14
execute as @a at @a run spawnpoint @a 14 104 14
gamemode adventure @a
execute as @a at @s run attribute @s knockback_resistance base reset
#execute if score *map map matches -1 run scoreboard players set *map map 0
schedule clear zhanqiao:wait/wait
forceload remove all