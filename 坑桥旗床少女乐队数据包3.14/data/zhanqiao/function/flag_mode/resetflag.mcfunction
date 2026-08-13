#debug
execute if score *debug debug matches 1 run tellraw @a "resetflag.mcfunction executed"
#清理遗留的旗帜展示实体
kill @e[tag=redflag_display]
kill @e[tag=blueflag_display]
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
item replace entity @e[type=zombie,tag=redflag] weapon.mainhand with air
item replace entity @e[type=zombie,tag=blueflag] weapon.mainhand with air
item replace entity @e[type=zombie,tag=redflag] armor.head with air
item replace entity @e[type=zombie,tag=blueflag] armor.head with air
effect give @e[type=zombie,tag=redflag] resistance infinite 255 true
effect give @e[type=zombie,tag=redflag] invisibility infinite 255 true
effect give @e[type=zombie,tag=redflag] fire_resistance infinite 255 true
effect give @e[type=zombie,tag=blueflag] resistance infinite 255 true
effect give @e[type=zombie,tag=blueflag] invisibility infinite 255 true
effect give @e[type=zombie,tag=blueflag] fire_resistance infinite 255 true
execute as @e[type=zombie,tag=redflag] run data remove entity @s CustomName
execute as @e[type=zombie,tag=blueflag] run data remove entity @s CustomName
execute as @e[type=zombie,tag=redflag] unless data entity @s Passengers[0] run function zhanqiao:flag_mode/red_flag_display
execute as @e[type=zombie,tag=blueflag] unless data entity @s Passengers[0] run function zhanqiao:flag_mode/blue_flag_display
execute if score *InFlagGame InFlagGame matches 1 run item replace entity @a armor.head with minecraft:air

