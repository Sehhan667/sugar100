execute if score *蓝队 score matches 5.. run function zhanqiao:blue_gg
execute if score *红队 score matches 5.. run function zhanqiao:red_gg
execute if score *c4team c4team matches 1 run execute if score *c4time c4time matches 0 run function zhanqiao:redwin
execute if score *c4team c4team matches 0 run execute if score *c4time c4time matches 0 run function zhanqiao:bluewin
execute if score *c4team c4team matches 0 run execute if score *lefttime lefttime matches ..0 run function zhanqiao:redwin
execute if score *c4team c4team matches 1 run execute if score *lefttime lefttime matches ..0 run function zhanqiao:bluewin
execute if score *InCSGOGame InCSGOGame matches 1 run gamemode spectator @a[scores={deathCount=1..}]
#掉落c4
execute as @a[tag=carrying_c4,scores={deathCount=1..}] run function zhanqiao:csgo_mode/drop_c4
#死了变滚木

#清除物品栏c4
execute as @a[tag=carrying_c4] at @s unless items entity @s hotbar.* stick run give @s stick[item_model=tnt,can_place_on={blocks:"bedrock"},custom_name={text:"c4"}]




execute if score *map map matches 0 run function zhanqiao:csgo_mode/map0tick
execute if score *map map matches 2 run function zhanqiao:csgo_mode/map2tick
execute if score *map map matches 3 run function zhanqiao:csgo_mode/map3tick
execute if score *map map matches 4 run function zhanqiao:csgo_mode/map4tick
execute if score *map map matches 6 run function zhanqiao:csgo_mode/map6tick



#安置c4
#execute if score *map map matches 2 positioned -191 112 -182 as @a[tag=carrying_c4,dx=1,dy=1,dz=1] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/map/dust2/place_c4_a
#execute if score *map map matches 2 positioned -203 115 -98 as @a[tag=carrying_c4,dx=1,dy=1,dz=1] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/map/dust2/place_c4_b

#execute if score *map map matches 0 positioned 405 136 355 as @a[tag=carrying_c4,dx=1,dy=1,dz=1] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/map/standoff/place_c4_a
#execute if score *map map matches 0 positioned 377 136 398 as @a[tag=carrying_c4,dx=1,dy=1,dz=1] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/map/standoff/place_c4_b

#execute if score *map map matches 4 positioned 430 169 579 as @a[tag=carrying_c4,dx=1,dy=1,dz=1] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/map/de_nuke/place_c4_a
#execute if score *map map matches 4 positioned 449 156 579 as @a[tag=carrying_c4,dx=1,dy=1,dz=1] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/map/de_nuke/place_c4_b




#c4倒计时
#execute if score *map map matches 2 if block -191 112 -182 obsidian run scoreboard players remove *c4time c4time 1
#execute if score *map map matches 2 if block -203 115 -98 obsidian run scoreboard players remove *c4time c4time 1

#execute if score *map map matches 0 if block 405 136 355 obsidian run scoreboard players remove *c4time c4time 1
#execute if score *map map matches 0 if block 377 136 398 obsidian run scoreboard players remove *c4time c4time 1

#execute if score *map map matches 4 if block 430 169 579 obsidian run scoreboard players remove *c4time c4time 1
#execute if score *map map matches 4 if block 449 156 579 obsidian run scoreboard players remove *c4time c4time 1


#不同地图破坏c4
#execute if score *map map matches 2 run function zhanqiao:csgo_mode/map/dust2/breakc4
#execute if score *map map matches 0 run function zhanqiao:csgo_mode/map/standoff/breakc4
#execute if score *map map matches 4 run function zhanqiao:csgo_mode/map/de_nuke/breakc4



#execute if score *map map matches 2 unless entity @a[team=blue,gamemode=!spectator] if entity @a[team=red] run function zhanqiao:csgo_mode/map/dust2/unlessred
#execute if score *map map matches 2 unless entity @a[team=red,gamemode=!spectator] if entity @a[team=blue] run function zhanqiao:csgo_mode/map/dust2/unlessblue
#execute if score *map map matches 0 unless entity @a[team=blue,gamemode=!spectator] if entity @a[team=red] run function zhanqiao:csgo_mode/map/standoff/unlessred
#execute if score *map map matches 0 unless entity @a[team=red,gamemode=!spectator] if entity @a[team=blue] run function zhanqiao:csgo_mode/map/standoff/unlessblue
#execute if score *map map matches 4 unless entity @a[team=blue,gamemode=!spectator] if entity @a[team=red] run function zhanqiao:csgo_mode/map/de_nuke/unlessred
#execute if score *map map matches 4 unless entity @a[team=red,gamemode=!spectator] if entity @a[team=blue] run function zhanqiao:csgo_mode/map/de_nuke/unlessblue


#execute as @a run execute if score *c4time c4time matches 1.. run bossbar set minecraft:time visible true
#execute as @a run execute if score *c4time c4time matches ..0 run bossbar set minecraft:time visible false
execute store result bossbar minecraft:time value run scoreboard players get *c4time c4time

execute as @a run execute if score *lefttime lefttime matches 1.. run bossbar set minecraft:lefttime visible true
execute as @a run execute if score *lefttime lefttime matches ..0 run bossbar set minecraft:lefttime visible false
execute store result bossbar minecraft:lefttime value run scoreboard players get *lefttime lefttime
execute if score *c4time c4time matches ..0 if score *lefttime lefttime matches 1.. run scoreboard players remove *lefttime lefttime 1
execute if score *c4time c4time matches 1.. run scoreboard players reset *lefttime lefttime

execute as @a[tag=carrying_c4] at @s if items entity @s weapon.mainhand stick run title @s actionbar "在基岩上下蹲以安置c4！"




#C4僵尸：完全隐形（卸掉装备和名字），用TNT方块展示实体作为视觉替代
item replace entity @e[tag=!c4,type=zombie] weapon.mainhand with air
item replace entity @e[tag=!c4,type=zombie] armor.head with air
effect give @e[tag=!c4,type=zombie] resistance infinite 255 true
effect give @e[tag=!c4,type=zombie] invisibility infinite 255 true
effect give @e[tag=!c4,type=zombie] fire_resistance infinite 255 true
effect give @e[tag=c4,type=zombie] fire_resistance infinite 255 true
execute as @e[tag=!c4,type=zombie] run data remove entity @s CustomName
tag @e[tag=!c4,type=zombie] add c4
#为没有展示实体的C4僵尸生成旋转+发光的TNT展示实体（buttonapi: but=旋转 orangeglow=发光）
execute as @e[type=zombie,tag=c4] unless entity @e[type=block_display,tag=c4_display,distance=..0.5] run function zhanqiao:csgo_mode/c4_display
#让C4展示实体每tick传送到僵尸位置跟随（不骑乘，避免朝向受僵尸影响）
execute as @e[type=zombie,tag=c4] at @s run tp @e[type=block_display,tag=c4_display,limit=1,sort=nearest] ~ ~0.5 ~