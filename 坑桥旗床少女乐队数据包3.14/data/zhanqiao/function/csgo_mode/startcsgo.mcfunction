#debug
execute if score *debug debug matches 1 run tellraw @a "startcsgo.mcfunction executed"

#execute if score *map map matches 1 run scoreboard players set *map map 2
#execute if score *map map matches 1 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"



#scoreboard players set *InCSGOGame InCSGOGame 1
scoreboard players set *allowchangeweapon allowchangeweapon 0
execute if score *shot shot matches 1 run scoreboard players set *InShotGame InShotGame 1
gamerule immediate_respawn false
execute if score *map map matches 1 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"

execute if score *map map matches 1 run scoreboard players set *map map 2
execute if score *map map matches -1 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"

execute if score *map map matches -1 run scoreboard players set *map map 2

execute if score *map map matches 5 run tellraw @a "当前选择的地图不支持该模式，已自动更改！"
execute if score *map map matches 5 run scoreboard players set *map map 2
execute as @a at @s if score @s offweapon matches 2 run scoreboard players set @s offweapon 0


#function zhanqiao:csgo_mode/preload

#scoreboard players set *map map 2
clear @a[team=blue]
clear @a[team=red]
#execute as @a[team=blue] run function zhanqiao:give/blue
#execute as @a[team=red] run function zhanqiao:give/red
scoreboard players set *红色 score 0
scoreboard players set *蓝队 score 0

#execute as @a at @s run spawnpoint @s 35 140 13
#execute unless score *allowchangeweapon allowchangeweapon matches 1 run execute as @a[team=blue] at @s run spawnpoint @s -299 115 -153
#execute unless score *allowchangeweapon allowchangeweapon matches 1 run execute as @a[team=red] at @s run spawnpoint @s -202 109 -119
#gamemode survival @a
bossbar add time "爆炸时间"
execute store result bossbar minecraft:time max run scoreboard players get *maxc4time maxc4time
bossbar add lefttime "剩余安置时间"
execute store result bossbar minecraft:lefttime max run scoreboard players get *maxlefttime maxlefttime




#gamemode adventure @a[team=blue]
#gamemode adventure @a[team=red]
#bossbar set time visible false
bossbar set minecraft:lefttime players @a
bossbar set minecraft:time players @a






#execute as @a at @s run function zhanqiao:map/go/gostandoff

team modify blue nametagVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams
function zhanqiao:csgo_mode/preload
schedule clear zhanqiao:csgo_mode/fuckmojang
schedule function zhanqiao:csgo_mode/fuckmojang 6.1s replace 