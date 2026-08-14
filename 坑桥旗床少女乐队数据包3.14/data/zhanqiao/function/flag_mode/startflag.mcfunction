#debug
execute if score *debug debug matches 1 run tellraw @a "startflag.mcfunction executed"

scoreboard players set *InFlagGame InFlagGame 1
execute if score *shot shot matches 1 run scoreboard players set *InShotGame InShotGame 1
gamerule immediate_respawn false
execute if score *map map matches 1 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"

execute if score *map map matches 1 run scoreboard players set *map map -1

execute if score *map map matches 2 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches 2 run scoreboard players set *map map -1

execute if score *map map matches 5 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches 5 run scoreboard players set *map map -1

execute if score *map map matches 4 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches 4 run scoreboard players set *map map -1

execute if score *map map matches 6 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches 6 run scoreboard players set *map map -1

execute if score *map map matches 3 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches 3 run scoreboard players set *map map -1
function zhanqiao:csgo_mode/preload

clear @a[team=blue]
clear @a[team=red]
#execute as @a[team=blue] run function zhanqiao:give/blue
#execute as @a[team=red] run function zhanqiao:give/red

#execute if score *InShotGame InShotGame matches 1 run tellraw @a "在弹夹打空时长按右键换弹，或者，你可以把武器放在副手长按右键换弹"
scoreboard players set *红队 score 0
scoreboard players set *蓝队 score 0

#execute as @a at @s run spawnpoint @s 35 140 13
#execute unless score *allowchangeweapon allowchangeweapon matches 1 run execute as @a[team=blue] at @s run spawnpoint @s 25 100 56
#execute unless score *allowchangeweapon allowchangeweapon matches 1 run execute as @a[team=red] at @s run spawnpoint @s 43 100 -32
#gamemode survival @a
#execute if score *map map matches -1 as @a[team=blue] at @s run spawnpoint @s 25 100 56
#execute if score *map map matches -1 as @a[team=red] at @s run spawnpoint @s 43 100 -32
fill 378 134 399 376 134 401 air
fill 407 134 355 409 134 353 air


fill 354 146 379 356 146 381 minecraft:air
fill 387 134 405 389 134 407 minecraft:air
fill 400 147 445 402 147 447 minecraft:andesite_slab
fill 430 148 408 432 148 410 minecraft:andesite_slab
