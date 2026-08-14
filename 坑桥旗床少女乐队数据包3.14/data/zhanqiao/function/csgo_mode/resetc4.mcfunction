#debug
execute if score *debug debug matches 1 run tellraw @a "resetc4.mcfunction executed"
tag @a remove carrying_c4
gamemode adventure @a
#tag @a remove carrying_blue_flag
#item replace entity @a inventory.0 with arrow 64
kill @e[type=arrow]
kill @e[type=area_effect_cloud]
kill @e[type=lingering_potion]
#随机拆弹方
tag @a remove lingzhu
tag @a remove mowan
execute as @a at @s run scoreboard players set @s deathCount 0
#scoreboard players set *c4team c4team 0
execute store result score *c4team c4team run random value 0..1

execute if score *map map matches 2 if score *c4team c4team matches 1 run function zhanqiao:csgo_mode/map/dust2/redgetc4
execute if score *map map matches 2 if score *c4team c4team matches 0 run function zhanqiao:csgo_mode/map/dust2/bluegetc4

execute if score *map map matches 0 if score *c4team c4team matches 1 run function zhanqiao:csgo_mode/map/standoff/redgetc4
execute if score *map map matches 0 if score *c4team c4team matches 0 run function zhanqiao:csgo_mode/map/standoff/bluegetc4

execute if score *map map matches 4 if score *c4team c4team matches 1 run function zhanqiao:csgo_mode/map/de_nuke/redgetc4
execute if score *map map matches 4 if score *c4team c4team matches 0 run function zhanqiao:csgo_mode/map/de_nuke/bluegetc4

execute if score *map map matches 6 if score *c4team c4team matches 1 run function zhanqiao:csgo_mode/map/inferno/redgetc4
execute if score *map map matches 6 if score *c4team c4team matches 0 run function zhanqiao:csgo_mode/map/inferno/bluegetc4

execute if score *map map matches 3 if score *c4team c4team matches 1 run function zhanqiao:csgo_mode/map/raid/redgetc4
execute if score *map map matches 3 if score *c4team c4team matches 0 run function zhanqiao:csgo_mode/map/raid/bluegetc4


#execute if score *c4team c4team matches 1 run summon zombie -202 108 -124 {Tags:["c4"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 2 run summon zombie -299 114 -148 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 0 run summon zombie 438 136 431 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 4 run summon zombie 443 169 640 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 6 run summon zombie 505 143 154 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 3 run summon zombie 739 141 173 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}

#item replace entity @e[type=zombie] weapon.mainhand with minecraft:barrier 1
#item replace entity @e[tag=blueflag] weapon.mainhand with minecraft:barrier 1
#effect give @e[type=zombie] glowing infinite 255 true
#effect give @e[type=zombie] resistance infinite 255 true
#effect give @e[type=zombie] invisibility infinite 255 true
#item replace entity @e[type=zombie] armor.head with minecraft:tnt
#tp @a[team=blue] -299 115 -153 facing 34.5 110 11.5





#execute if score *map map matches 0 run function zhanqiao:map/standoff
gamemode adventure @a
execute if score *map map matches 2 run setblock -191 112 -182 air
execute if score *map map matches 2 run setblock -203 115 -98 air
execute if score *map map matches 0 run setblock 405 136 355 air
execute if score *map map matches 0 run setblock 377 136 398 air
execute if score *map map matches 4 run setblock 430 169 579 air
execute if score *map map matches 4 run setblock 449 156 579 air
execute if score *map map matches 6 run setblock 431 149 239 air
execute if score *map map matches 6 run setblock 375 149 145 air
execute if score *map map matches 3 run setblock 818 143 275 air
execute if score *map map matches 3 run setblock 691 140 345 air
gamerule immediate_respawn false
bossbar set minecraft:time visible false
#scoreboard players set *lefttime lefttime 20480
execute store result score *lefttime lefttime run scoreboard players get *maxlefttime maxlefttime
clear @a[tag=!carrying_c4] stick