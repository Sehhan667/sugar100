execute if score *InGame InGame matches 1 run clear @a #zhanqiao:clear
kill @e[type=zombie]
kill @e[tag=c4_display]
kill @e[tag=redflag_display]
kill @e[tag=blueflag_display]
effect clear @a
#gamemode spectator @a[!team=blue,!team=red]
#setblock 40 70 11 redstone_block
#effect give @a slowness 3 255 true
#effect give @a[team=red] slowness 3 255 true
execute if score *InHotSpotGame InHotSpotGame matches 1 run function zhanqiao:hotspot_mode/hotspotreset
#刷新场景
execute if score *InGame InGame matches 1 run setblock 34 70 11 redstone_block
execute if score *InBedGame InBedGame matches 1 run setblock 36 72 11 redstone_block
execute if score *InMLGGame InMLGGame matches 1 run setblock 36 70 11 redstone_block
execute if score *InFlagGame InFlagGame matches 1 run setblock 30 70 11 redstone_block
execute if score *InShotGameWin InShotGameWin matches 1 run setblock 30 70 11 redstone_block

#入场
execute if score *InGame InGame matches 1 run tp @a[team=blue] 34.50 110.00 43.50 facing 34.5 110 11.5
execute if score *InGame InGame matches 1 run tp @a[team=red] 34.50 110.00 -20.50 facing 34.5 110 11.5

#mlg入场
execute if score *InMLGGame InMLGGame matches 1 run tp @a[team=blue] 34.50 110.00 43.50 facing 34.5 110 11.5
execute if score *InMLGGame InMLGGame matches 1 run tp @a[team=red] 34.50 110.00 -20.50 facing 34.5 110 11.5
#mlg入场
execute if score *InBedGame InBedGame matches 1 run tp @a[team=blue] 34 105 48 facing 34.5 110 11.5
execute if score *InBedGame InBedGame matches 1 run tp @a[team=red] 35 105 -24 facing 34.5 110 11.5

#flag入场
#execute if score *InFlagGame InFlagGame matches 1 run tp @a[team=blue] 25 100 56 facing 34.5 110 11.5
#execute if score *InFlagGame InFlagGame matches 1 run tp @a[team=red] 43 100 -33 facing 34.5 110 11.5

execute unless score *InGame InGame matches 1 unless score *InMLGGame InMLGGame matches 1 unless score *InBedGame InBedGame matches 1 if score *map map matches 0 run function zhanqiao:map/go/gostandoff
execute unless score *InGame InGame matches 1 unless score *InMLGGame InMLGGame matches 1 unless score *InBedGame InBedGame matches 1 if score *map map matches 1 run function zhanqiao:map/go/gonuketown
execute unless score *InGame InGame matches 1 unless score *InMLGGame InMLGGame matches 1 unless score *InBedGame InBedGame matches 1 if score *map map matches 5 run function zhanqiao:map/go/gosummit


execute if score *InHotSpotGame InHotSpotGame matches 1 run title @a subtitle {"text":"保证只有我方成员待在热点内以持续获得分数，150分获胜！","color":"yellow"}
execute if score *InHotSpotGame InHotSpotGame matches 1 run title @a title {"text":"热点战开始！","color":"blue"}
execute if score *InHotSpotGame InHotSpotGame matches 1 run tellraw @a "热点所在的地方会亮起信标，热点范围有海晶石灯标记  "

execute if score *InCSGOGame InCSGOGame matches 1 run title @a subtitle {"text":"就是经典的爆破模式。","color":"yellow"}
execute if score *InCSGOGame InCSGOGame matches 1 run title @a title {"text":"爆破开始！","color":"blue"}
execute if score *InCSGOGame InCSGOGame matches 1 run tellraw @a "包点所在的地方会亮起信标.  "

execute if score *InFlagGame InFlagGame matches 1 run title @a subtitle {"text":"抢夺对面的旗帜并带回自家信标来获得胜利！拾取旗帜会获得缓慢和发光！","color":"yellow"}
execute if score *InFlagGame InFlagGame matches 1 run title @a title {"text":"游戏开始","color":"blue"}


execute if score *InShotGameWin InShotGameWin matches 1 run execute as @a[team=blue] at @s run tp @s 25 100 56
execute if score *InShotGameWin InShotGameWin matches 1 run execute as @a[team=red] at @s run tp @s 43 100 -32
#shot入场
#execute if score *InShotGame InShotGame matches 1 run tp @a[team=blue] 25 100 56 facing 34.5 110 11.5
#execute if score *InShotGame InShotGame matches 1 run tp @a[team=red] 43 100 -33 facing 34.5 110 11.5

#csgo入场
#execute if score *InCSGOGame InCSGOGame matches 1 run tp @a[team=blue] -299 115 -153 facing 34.5 110 11.5
#execute if score *InCSGOGame InCSGOGame matches 1 run tp @a[team=red] -202 109 -119 facing 34.5 110 11.5

kill @e[type=arrow]

#清除旗帜
execute if score *InFlagGame InFlagGame matches 1 run function zhanqiao:flag_mode/resetflag
execute if score *InFlagGame InFlagGame matches 1 run gamemode survival @a





#回城
#execute if score *InGame InGame matches 0 run tp @a 14 104 14 facing 34.5 110 11.5
scoreboard players set @a slidecd 20
scoreboard players set @a slidetime 0
#attribute @a sneaking_speed base reset









#execute as @a[team=blue] store result score @s blockCount run clear @s blue_concrete 0
#execute as @a[team=red] store result score @s blockCount run clear @s red_concrete 0
#execute as @a[team=blue] if score @s blockCount matches ..191 run function zhanqiao:give/blue_concrete
#execute as @a[team=red] if score @s blockCount matches ..191 run function zhanqiao:give/red_concrete

execute as @a[team=blue] store result score @s golden_apple run clear @s golden_apple 0
execute as @a[team=red] store result score @s golden_apple run clear @s golden_apple 0
execute as @a[team=blue] if score @s golden_apple matches ..3 run function zhanqiao:give/golden_apple
execute as @a[team=red] if score @s golden_apple matches ..3 run function zhanqiao:give/golden_apple

#clear @a[team= blue] arrow
#clear @a[team= red] arrow
#give @a[team=blue] arrow 4
#give @a[team=red] arrow 4
#execute if score *InFlagGame InFlagGame matches 1 run item replace entity @a inventory.0 with arrow 60
#execute if score *InFlagGame InFlagGame matches 1 run give @a arrow 60



execute positioned 34 106 11 run kill @e[sort= nearest,limit=1,type=item,distance=..0.25,nbt={Item:{id:"minecraft:netherite_spear"}}]
execute if score *InGame InGame matches 1 run schedule function zhanqiao:10s 10s replace
execute if score *InGame InGame matches 1 run schedule function zhanqiao:25s 25s replace

#gamemode survival @a[team=blue]
#gamemode survival @a[team=red]

#effect clear @a[team=blue]
#effect clear @a[team=red]
execute as @a run effect give @s instant_health 1 28 true



#给东西
execute as @a at @s run function zhanqiao:death
#give @a[nbt=!{Inventory:[{id:"minecraft:iron_pickaxe"}]}] iron_pickaxe[unbreakable={},can_break={blocks:["blue_concrete","red_concrete","red_glazed_terracotta","light_blue_glazed_terracotta"]}] 1
#give @a[nbt=!{Inventory:[{id:"minecraft:stone_sword"}]}] stone_sword[unbreakable={}] 1

#重置c4
execute if score *InCSGOGame InCSGOGame matches 1 run function zhanqiao:csgo_mode/resetc4




scoreboard players set @a cooldown 1




execute if score *map map matches 1 run function zhanqiao:map/nuketown
execute if score *map map matches 0 run function zhanqiao:map/standoff


execute as @a at @s run attribute @s movement_efficiency base reset
execute as @a at @s run attribute @s movement_speed base reset
execute as @a at @s run attribute @s movement_efficiency modifier remove move
execute as @a at @s run attribute @s movement_speed modifier remove move

#是否低版本pvp
execute if score *ifoldpvp ifoldpvp matches 1 run function zhanqiao:oldpvp
execute if score *ifoldpvp ifoldpvp matches 0 run function zhanqiao:newpvp