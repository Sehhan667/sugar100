#debug
execute if score *debug debug matches 1 run tellraw @a "resetc4.mcfunction executed"
tag @a remove carrying_c4
tag @a remove installing
scoreboard players set @a c4install 0
gamemode adventure @a




#把既不在蓝队也不在红队的玩家设为旁观者，并tp到最近的有队伍的玩家
gamemode spectator @a[team=!blue,team=!red]
execute as @a[team=!blue,team=!red] at @s run execute if entity @p[team=blue,distance=..999] run tp @s @p[team=blue,distance=..999]
execute as @a[team=!blue,team=!red] at @s run execute unless entity @p[team=blue,distance=..999] run tp @s @p[team=red,distance=..999]





kill @e[type=arrow]
kill @e[type=area_effect_cloud]
kill @e[type=lingering_potion]
kill @e[tag=c4site_display]




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

execute if score *map map matches 5 if score *c4team c4team matches 1 run function zhanqiao:csgo_mode/map/summit/redgetc4
execute if score *map map matches 5 if score *c4team c4team matches 0 run function zhanqiao:csgo_mode/map/summit/bluegetc4


#execute if score *c4team c4team matches 1 run summon zombie -202 108 -124 {Tags:["c4"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 2 run summon zombie -299 114 -148 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 0 run summon zombie 438 136 431 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 4 run summon zombie 443 169 640 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 6 run summon zombie 505 143 154 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 3 run summon zombie 739 141 173 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}
execute if score *map map matches 5 run summon zombie 312 204 852 {Tags:["c"],NoAI:1b,Silent:1b,PersistenceRequired:true,CustomName:'C4'}








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
execute if score *map map matches 5 run setblock 424 201 856 air
execute if score *map map matches 5 run setblock 420 195 801 air
#在每个包点生成3x1x3玻璃展示实体，使黑曜石格子位于展示实体中心（召唤点=包点坐标-1.25,-0.5,-1.25，方块向正方向延申）
execute if score *map map matches 0 run summon block_display 403.75 135.5 353.75 {Tags:["c4site_display","aquaglow"],block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 0 run summon block_display 375.75 135.5 396.75 {Tags:["c4site_display","redglow"],block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 2 run summon block_display -192.25 111.5 -183.25 {Tags:["c4site_display","aquaglow"],block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 2 run summon block_display -204.25 114.5 -99.25 {Tags:["c4site_display","redglow"],block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 3 run summon block_display 816.75 142.5 273.75 {Tags:["c4site_display","redglow"],block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 3 run summon block_display 689.75 139.5 343.75 {Tags:["c4site_display","aquaglow"],block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 4 run summon block_display 428.75 168.5 577.75 {Tags:["c4site_display","aquaglow"],block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 4 run summon block_display 447.75 155.5 577.75 {Tags:["c4site_display","redglow"],block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 6 run summon block_display 429.75 148.5 237.75 {Tags:["c4site_display","redglow"],block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 6 run summon block_display 373.75 148.5 143.75 {Tags:["c4site_display","aquaglow"],block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 5 run summon block_display 422.75 200.5 854.75 {Tags:["c4site_display","redglow"],block_state:{Name:"minecraft:red_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}
execute if score *map map matches 5 run summon block_display 418.75 194.5 799.75 {Tags:["c4site_display","aquaglow"],block_state:{Name:"minecraft:light_blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]},teleport_duration:1}





gamerule immediate_respawn false
bossbar set minecraft:time visible false
#scoreboard players set *lefttime lefttime 20480
execute store result score *lefttime lefttime run scoreboard players get *maxlefttime maxlefttime
clear @a[tag=!carrying_c4] stick
#