#debug
execute if score *debug debug matches 1 run tellraw @a {"text":"death.mcfunction executed","color":"red"}
execute if score *InShotGame InShotGame matches 1 run item replace entity @s weapon.offhand with air

execute as @s run execute if score *InShotGameWin InShotGameWin matches 1 run execute if score *allowchangeweapon allowchangeweapon matches 1 run function zhanqiao:shot_mode/weapon_change
execute if entity @s[team=blue] store result score @s blockCount run clear @s blue_concrete 0
execute if entity @s[team=red] store result score @s blockCount run clear @s red_concrete 0
execute if score *InFlagGame InFlagGame matches 1 if entity @s[team=blue] if score @s blockCount matches ..191 run function zhanqiao:give/blue_concrete
execute if score *InFlagGame InFlagGame matches 1 if entity @s[team=red] if score @s blockCount matches ..191 run function zhanqiao:give/red_concrete
execute if score *InHotSpotGame InHotSpotGame matches 1 if score *buildinspot buildinspot matches 1 if entity @s[team=blue] if score @s blockCount matches ..191 run function zhanqiao:give/blue_concrete
execute if score *InHotSpotGame InHotSpotGame matches 1 if score *buildinspot buildinspot matches 1 if entity @s[team=red] if score @s blockCount matches ..191 run function zhanqiao:give/red_concrete
execute if score *InGame InGame matches 1 if entity @s[team=blue] if score @s blockCount matches ..191 run function zhanqiao:give/blue_concrete
execute if score *InGame InGame matches 1 if entity @s[team=red] if score @s blockCount matches ..191 run function zhanqiao:give/red_concrete
execute if score *InMLGGame InMLGGame matches 1 if entity @s[team=blue] if score @s blockCount matches ..191 run function zhanqiao:give/blue_concrete
execute if score *InMLGGame InMLGGame matches 1 if entity @s[team=red] if score @s blockCount matches ..191 run function zhanqiao:give/red_concrete
execute if score *InBedGame InBedGame matches 1 if entity @s[team=blue] if score @s blockCount matches ..191 run function zhanqiao:give/blue_concrete
execute if score *InBedGame InBedGame matches 1 if entity @s[team=red] if score @s blockCount matches ..191 run function zhanqiao:give/red_concrete

execute store result score @s golden_apple run clear @s golden_apple 0
execute if score @s golden_apple matches ..3 run function zhanqiao:give/golden_apple
#弹射保护
#execute if score *InShotGame InShotGame matches 1 run item replace entity @s[team=red] armor.head with poppy[enchantments={"protection":20,projectile_protection:10}]
#execute if score *InShotGame InShotGame matches 1 run item replace entity @s[team=blue] armor.head with cornflower[enchantments={"protection":20,projectile_protection:10}]

clear @s[team= blue] arrow
clear @s[team= red] arrow
execute unless score *InMLGGame InMLGGame matches 1 run give @s arrow 4
#give @s[team=red] arrow 4
execute unless score *InGame InGame matches 1 unless score *InBedGame InBedGame matches 1 run execute unless score *InMLGGame InMLGGame matches 1 run give @s arrow 60

execute if score *InShotGame InShotGame matches 1 as @a at @s run attribute @s armor base set 521
execute if score *InShotGame InShotGame matches 1 as @a at @s run attribute @s armor_toughness base set 8
execute if score *InShotGame InShotGame matches 1 as @a at @s run attribute @s knockback_resistance base set 999






execute unless score *InCSGOGame InCSGOGame matches 1 run give @s[nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe[unbreakable={},can_break={blocks:["blue_concrete","red_concrete","red_glazed_terracotta","light_blue_glazed_terracotta"]}] 1
execute unless score *InShotGame InShotGame matches 1 run give @s[nbt=!{Inventory:[{id:"minecraft:stone_sword"}]}] stone_sword[unbreakable={}] 1

#不知道为什么还是会给所以不得不清
execute if score *InShotGame InShotGame matches 1 run clear @s bow[!custom_data={type:"m700"}]
execute if score *InShotGame InShotGame matches 1 run clear @s stone_sword
execute if score *InCSGOGame InCSGOGame matches 1 run clear @s iron_pickaxe
execute if score *InCSGOGame InCSGOGame matches 1 run clear @s blue_concrete
execute if score *InCSGOGame InCSGOGame matches 1 run clear @s red_concrete
#kill @e[type=interaction]
#武器管理


#execute as @s if score @s mainweapon matches 2 run clear @s crossbow[custom_data={type:"fennec"}]
#execute as @a[nbt=!{SelectedItem:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{type:"krm262"}}}]}] at @s run attribute @s movement_speed base reset

#主武器给与

#262加速


#execute if score *InCSGOGame InCSGOGame matches 1 run execute if score @s mainweapon matches 2 run give @s wind_charge 8



#execute if score *InShotGame InShotGame matches 1 run clear @s iron_sword

#execute if score *InCSGOGame InCSGOGame matches 1 run execute if score @s mainweapon matches 2 run give @s[nbt=!{Inventory:[{id:"minecraft:mace"}]}] mace[can_break={blocks:obsidian},enchantments={wind_burst:1}]
execute if score *InBedGame InBedGame matches 1 run give @s[nbt=!{Inventory:[{id:"minecraft:bow"}]}] bow
execute if score *InBedGame InBedGame matches 1 run give @s[nbt=!{Inventory:[{id:"minecraft:shears"}]}] shears
execute if score *InBedGame InBedGame matches 1 run give @s[nbt=!{Inventory:[{id:"minecraft:stone_axe"}]}] stone_axe
execute if score *InGame InGame matches 1 run give @s[nbt=!{Inventory:[{id:"minecraft:bow"}]}] bow
#补充弹药
execute if score *InShotGame InShotGame matches 1 as @a at @s run function zhanqiao:shot_mode/ammo
#execute if score *InShotGame InShotGame matches 1 run scoreboard objectives setdisplay sidebar.team.blue ammo
#execute if score *InShotGame InShotGame matches 1 run scoreboard objectives setdisplay sidebar.team.blue mag

execute if score *InCSGOGame InCSGOGame matches 1 run give @s[nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] diamond_pickaxe[can_break={blocks:["obsidian","glass"]}]
#execute if score @s mainweapon matches 2 at @s run summon interaction ~ ~ ~ {width:0.5,height:0.5,Tags:["bp50_trigger"]}
execute at @s if score *InShotGame InShotGame matches 1 run function zhanqiao:shot_mode/mainweapon
execute at @s if score *InShotGame InShotGame matches 1 run function zhanqiao:shot_mode/offweapon
execute at @s if score *InShotGame InShotGame matches 1 run function zhanqiao:shot_mode/prop

#execute as @a at @s if score *buldinspot buldinspot matches 0 run clear @s blue_concrete
#execute as @a at @s if score *buldinspot buldinspot matches 0 run clear @s red_concrete