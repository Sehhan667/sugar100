#debug
execute if score *debug debug matches 1 run tellraw @a "starthotspot.mcfunction executed"

execute if score *map map matches 2 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches 2 run scoreboard players set *map map 0


execute if score *map map matches -1 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches -1 run scoreboard players set *map map 0

execute if score *map map matches 4 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches 4 run scoreboard players set *map map 0

execute if score *map map matches 6 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches 6 run scoreboard players set *map map -1

function zhanqiao:csgo_mode/preload
execute if score *map map matches 5 run scoreboard players set *buildinspot buildinspot 0


scoreboard players set *InHotSpotGame InHotSpotGame 1
scoreboard players set *allowchangeweapon allowchangeweapon 0
execute if score *shot shot matches 1 run scoreboard players set *InShotGame InShotGame 1
gamerule immediate_respawn true
scoreboard players set *EnableKilledRewards EnableKilledRewards 0

bossbar set minecraft:hotspotblue visible true
bossbar set minecraft:hotspotred visible true
clear @a[team=blue]
clear @a[team=red]
#execute as @a[team=blue] run function zhanqiao:give/blue
#execute as @a[team=red] run function zhanqiao:give/red
#title @a subtitle {"text":"保证只有我方成员待在热点内以持续获得分数，150分获胜！","color":"yellow"}
#title @a title {"text":"热点战开始！","color":"blue"}
#tellraw @a "热点所在的地方会亮起信标，热点范围有海晶石灯标记  "
scoreboard players set *红色 score 0
scoreboard players set *蓝队 score 0

#execute as @a[team=red] at @s run spawnpoint @s 341 137 363
#execute as @a[team=red] at @s run tp @s 341 137 363
#execute as @a[team=blue] at @s run spawnpoint @s 455 137 433
#execute as @a[team=blue] at @s run tp 455 137 433
#gamemode adventure @a[team=blue]
#gamemode adventure @a[team=red]
execute if score *buildinspot buildinspot matches 1 run gamemode survival @a[team=blue]
execute if score *buildinspot buildinspot matches 1 run gamemode survival @a[team=red]

#clear @a blue_concrete
#clear @a red_concrete
#setblock 400 146 411 redstone_block
fill 400 147 445 402 147 447 minecraft:andesite_slab
fill 387 134 405 389 134 407 minecraft:iron_block

#execute if score *map map matches 0 run function zhanqiao:map/go/gostandoff
#execute if score *map map matches 1 run function zhanqiao:map/go/gonuketown
#execute if score *map map matches 5 run function zhanqiao:map/go/gosummit

#execute if score *buildinspot buildinspot matches 1 run gamemode survival @a

#execute if score *map map matches 1 run function zhanqiao:give/blue_concrete
#execute if score *map map matches 1 run function zhanqiao:give/red_concrete
fill 378 134 399 376 134 401 air
fill 407 134 355 409 134 353 air
