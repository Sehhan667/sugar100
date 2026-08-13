execute positioned 430 169 579 as @a[tag=carrying_c4,dx=1,dy=1,dz=1] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/map/de_nuke/place_c4_a
execute positioned 449 156 579 as @a[tag=carrying_c4,dx=1,dy=1,dz=1] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run function zhanqiao:csgo_mode/map/de_nuke/place_c4_b

execute if block 430 169 579 obsidian run scoreboard players remove *c4time c4time 1
execute if block 449 156 579 obsidian run scoreboard players remove *c4time c4time 1

function zhanqiao:csgo_mode/map/de_nuke/breakc4

execute unless entity @a[team=blue,gamemode=!spectator] if entity @a[team=red] run function zhanqiao:csgo_mode/map/de_nuke/unlessred
execute unless entity @a[team=red,gamemode=!spectator] if entity @a[team=blue] run function zhanqiao:csgo_mode/map/de_nuke/unlessblue
