#execute if score *anygame anygame matches 0 run return fail
#execute unless score *anygame anygame matches 1 run execute as @a at @s run attribute @s movement_speed base reset
#execute unless score *anygame anygame matches 1 run execute as @a at @s run attribute @s jump_strength base reset
#execute if score *蓝队 score matches 5 run return fail
#execute if score *红队 score matches 5 run return fail

execute if score *蓝队 score matches 5.. run return 0
execute if score *红队 score matches 5.. run return 0

execute as @a[team=red] run attribute @s movement_speed base set 0
execute as @a[team=red] run attribute @s minecraft:jump_strength base set 0
execute as @a[team=blue] run attribute @s movement_speed base set 0
execute as @a[team=blue] run attribute @s minecraft:jump_strength base set 0
schedule function zhanqiao:wait/2s 2s replace
schedule function zhanqiao:wait/3s 3s replace
schedule function zhanqiao:wait/4s 4s replace
schedule function zhanqiao:wait/5s 5s replace
effect give @a resistance 4 255 true