#debug
execute if score *debug debug matches 1 run tellraw @a "red_flag_spawn.mcfunction executed"

execute as @a[tag=carrying_red_flag] run summon zombie ~ ~ ~ {Tags:["redflag","flag_core"],NoAI:1b,Silent:1b}
#team join red @e[tag=redflag]
#team join blue @e[tag=blueflag]
#伴随生成红队旗帜展示实体
execute as @e[type=zombie,tag=redflag] run function zhanqiao:flag_mode/red_flag_display
execute as @e[type=zombie] at @s run teleport @s ~ ~ ~ 1 1