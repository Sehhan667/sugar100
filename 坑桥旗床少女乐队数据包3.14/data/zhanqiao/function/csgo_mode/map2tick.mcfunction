#A点安装（半径1.5格内潜行持续累积，到80完成）
execute positioned -191 112 -182 as @a[tag=carrying_c4,distance=..1.5] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run tag @s add installing
execute positioned -191 112 -182 as @a[tag=carrying_c4,distance=..1.5] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/c4_install
execute positioned -191 112 -182 as @a[tag=carrying_c4,distance=..1.5] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run execute if score @s c4install matches 80.. run function zhanqiao:csgo_mode/map/dust2/place_c4_a
execute positioned -191 112 -182 as @a[tag=carrying_c4,distance=..1.5] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run execute if score @s c4install matches 80.. run scoreboard players set @s c4install 0
#B点安装
execute positioned -203 115 -98 as @a[tag=carrying_c4,distance=..1.5] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run tag @s add installing
execute positioned -203 115 -98 as @a[tag=carrying_c4,distance=..1.5] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/c4_install
execute positioned -203 115 -98 as @a[tag=carrying_c4,distance=..1.5] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run execute if score @s c4install matches 80.. run function zhanqiao:csgo_mode/map/dust2/place_c4_b
execute positioned -203 115 -98 as @a[tag=carrying_c4,distance=..1.5] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run execute if score @s c4install matches 80.. run scoreboard players set @s c4install 0
#中断清零：未处于安装状态（范围内+潜行）的持包玩家进度归零
execute as @a[tag=carrying_c4,tag=!installing] run scoreboard players set @s c4install 0
tag @a remove installing

execute if block -191 112 -182 obsidian run scoreboard players remove *c4time c4time 1
execute if block -203 115 -98 obsidian run scoreboard players remove *c4time c4time 1

function zhanqiao:csgo_mode/map/dust2/breakc4

execute unless entity @a[team=blue,gamemode=!spectator] if entity @a[team=red] run function zhanqiao:csgo_mode/map/dust2/unlessred
execute unless entity @a[team=red,gamemode=!spectator] if entity @a[team=blue] run function zhanqiao:csgo_mode/map/dust2/unlessblue
