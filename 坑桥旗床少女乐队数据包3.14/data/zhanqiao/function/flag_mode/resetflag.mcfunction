#debug
execute if score *debug debug matches 1 run tellraw @a "resetflag.mcfunction executed"
execute if score *map map matches -1 as @a[team=blue] at @s run tp @s 25 100 56
execute if score *map map matches -1 as @a[team=red] at @s run tp @s 43 100 -32

execute if score *map map matches 0 as @a[team=blue] at @s run tp @s 451 137 432
execute if score *map map matches 0 as @a[team=red] at @s run tp @s 345 137 363




tag @a remove carrying_red_flag
tag @a remove carrying_blue_flag
#item replace entity @a inventory.0 with arrow 64

execute if score *map map matches -1 run summon zombie 41 98 -34 {Tags:["redflag","flag_core"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'红队旗帜'}
execute if score *map map matches -1 run summon zombie 27 98 57 {Tags:["blueflag","flag_core"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'蓝队旗帜'}

execute if score *map map matches 0 run summon zombie 363 140 380 {Tags:["redflag","flag_core"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'红队旗帜'}
execute if score *map map matches 0 run summon zombie 439 136 446 {Tags:["blueflag","flag_core"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'蓝队旗帜'}




team join red @e[tag=redflag]
team join blue @e[tag=blueflag]
item replace entity @e[tag=redflag] weapon.mainhand with minecraft:barrier 1
item replace entity @e[tag=blueflag] weapon.mainhand with minecraft:barrier 1
effect give @e[type=zombie] glowing infinite 255 true
effect give @e[type=zombie] resistance infinite 255 true
effect give @e[type=zombie] invisibility infinite 255 true
item replace entity @e[type=zombie,tag=redflag] armor.head with minecraft:red_banner
item replace entity @e[type=zombie,tag=blueflag] armor.head with minecraft:blue_banner
execute if score *InFlagGame InFlagGame matches 1 run item replace entity @a armor.head with minecraft:air

