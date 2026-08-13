#debug
execute if score *debug debug matches 1 run tellraw @a "red_flag_spawn.mcfunction executed"

execute as @a[tag=carrying_red_flag] run summon zombie ~ ~ ~ {Tags:["redflag","flag_core"],NoAI:1b,Silent:1b,CustomName:'红队旗帜'}
team join red @e[tag=redflag]
team join blue @e[tag=blueflag]
effect give @e[type=zombie] glowing infinite 255 true
effect give @e[type=zombie] resistance infinite 255 true
effect give @e[type=zombie] invisibility infinite 255 true
item replace entity @e[type=zombie,tag=redflag] armor.head with minecraft:red_banner
item replace entity @e[type=zombie,tag=blueflag] armor.head with minecraft:blue_banner