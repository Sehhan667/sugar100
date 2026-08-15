execute if score *InHotSpotGame InHotSpotGame matches 1 run execute if score *蓝队 score matches 150.. run function zhanqiao:blue_gg
execute if score *InHotSpotGame InHotSpotGame matches 1 run execute if score *红队 score matches 150.. run function zhanqiao:red_gg





execute store result bossbar minecraft:hotspotblue value run scoreboard players get *hotspotteamblue hotspotteamblue
bossbar set hotspotblue players @a
execute store result bossbar minecraft:hotspotred value run scoreboard players get *hotspotteamred hotspotteamred
bossbar set hotspotred players @a
execute if score *map map matches 0 run function zhanqiao:hotspot_mode/point/standoff/beaconlight
execute if score *map map matches 1 run function zhanqiao:hotspot_mode/point/nuketown/beaconlight
execute if score *map map matches 5 run function zhanqiao:hotspot_mode/point/summit/beaconlight
#热点展示实体按占领状态切换状态（玻璃+发光标签，独立文件管理）
function zhanqiao:hotspot_mode/spotdisplay_state

#切点
scoreboard players add *hotspotswitchtime hotspotswitchtime 1
execute if score *hotspotswitchtime hotspotswitchtime matches 2200.. if score *map map matches 0 run execute as @a[team=blue] at @s run function zhanqiao:hotspot_mode/point/standoff/spawnblue
execute if score *hotspotswitchtime hotspotswitchtime matches 2200.. if score *map map matches 0 run execute as @a[team=red] at @s run function zhanqiao:hotspot_mode/point/standoff/spawnred

execute if score *hotspotswitchtime hotspotswitchtime matches 2200.. if score *map map matches 1 run execute as @a[team=blue] at @s run function zhanqiao:hotspot_mode/point/nuketown/spawnblue
execute if score *hotspotswitchtime hotspotswitchtime matches 2200.. if score *map map matches 1 run execute as @a[team=red] at @s run function zhanqiao:hotspot_mode/point/nuketown/spawnred

execute if score *hotspotswitchtime hotspotswitchtime matches 2200.. if score *map map matches 5 run execute as @a[team=blue] at @s run function zhanqiao:hotspot_mode/point/summit/spawnblue
execute if score *hotspotswitchtime hotspotswitchtime matches 2200.. if score *map map matches 5 run execute as @a[team=red] at @s run function zhanqiao:hotspot_mode/point/summit/spawnred


execute if score *hotspotswitchtime hotspotswitchtime matches 2200.. run function zhanqiao:hotspot_mode/spotswitch
#猎奇出生点


execute if score *hotspotposition hotspotposition matches 4 run scoreboard players set *hotspotposition hotspotposition 0




#占领进度控制
execute if score *map map matches 0 run execute if score *hotspotposition hotspotposition matches 0 run function zhanqiao:hotspot_mode/point/standoff/point_0
execute if score *map map matches 0 run execute if score *hotspotposition hotspotposition matches 1 run function zhanqiao:hotspot_mode/point/standoff/point_1
execute if score *map map matches 0 run execute if score *hotspotposition hotspotposition matches 2 run function zhanqiao:hotspot_mode/point/standoff/point_2
execute if score *map map matches 0 run execute if score *hotspotposition hotspotposition matches 3 run function zhanqiao:hotspot_mode/point/standoff/point_3


execute if score *map map matches 1 run execute if score *hotspotposition hotspotposition matches 0 run function zhanqiao:hotspot_mode/point/nuketown/point_0
execute if score *map map matches 1 run execute if score *hotspotposition hotspotposition matches 1 run function zhanqiao:hotspot_mode/point/nuketown/point_1
execute if score *map map matches 1 run execute if score *hotspotposition hotspotposition matches 2 run function zhanqiao:hotspot_mode/point/nuketown/point_2
execute if score *map map matches 1 run execute if score *hotspotposition hotspotposition matches 3 run function zhanqiao:hotspot_mode/point/nuketown/point_3

execute if score *map map matches 5 run execute if score *hotspotposition hotspotposition matches 0 run function zhanqiao:hotspot_mode/point/summit/point_0
execute if score *map map matches 5 run execute if score *hotspotposition hotspotposition matches 1 run function zhanqiao:hotspot_mode/point/summit/point_1
execute if score *map map matches 5 run execute if score *hotspotposition hotspotposition matches 2 run function zhanqiao:hotspot_mode/point/summit/point_2
execute if score *map map matches 5 run execute if score *hotspotposition hotspotposition matches 3 run function zhanqiao:hotspot_mode/point/summit/point_3




#蓝队热点站点进度

#第二个点

#第三个点

#第四个点



#红队热点站点进度
#第一个点
#第二个点

#第三个点

#第四个点





#加分
execute if score *hotspotteamred hotspotteamred matches 199.. if score *hotspotteamblue hotspotteamblue matches 0 run scoreboard players add *hotspotaddred hotspotaddred 1
execute if score *hotspotteamblue hotspotteamblue matches 199.. if score *hotspotteamred hotspotteamred matches 0 run scoreboard players add *hotspotaddblue hotspotaddblue 1

#加分cd
execute if score *map map matches 0 run execute if score *hotspotaddblue hotspotaddblue matches 20.. run function zhanqiao:hotspot_mode/point/standoff/spotscoreblue
execute if score *map map matches 0 run execute if score *hotspotaddred hotspotaddred matches 20.. run function zhanqiao:hotspot_mode/point/standoff/spotscorered

execute if score *map map matches 1 run execute if score *hotspotaddblue hotspotaddblue matches 20.. run function zhanqiao:hotspot_mode/point/nuketown/spotscoreblue
execute if score *map map matches 1 run execute if score *hotspotaddred hotspotaddred matches 20.. run function zhanqiao:hotspot_mode/point/nuketown/spotscorered

execute if score *map map matches 5 run execute if score *hotspotaddblue hotspotaddblue matches 20.. run function zhanqiao:hotspot_mode/point/summit/spotscoreblue
execute if score *map map matches 5 run execute if score *hotspotaddred hotspotaddred matches 20.. run function zhanqiao:hotspot_mode/point/summit/spotscorered




#function zhanqiao:hotspot_mode/beaconlight

#debug
execute if score *debug debug matches 1 run title @a actionbar ["",{"text":"[蓝队进度: ","color":"blue"},{"score":{"name":"*hotspotteamblue","objective":"hotspotteamblue"},"color":"aqua"},{"text":" | CD: ","color":"gray"},{"score":{"name":"*hotspotaddblue","objective":"hotspotaddblue"},"color":"white"},{"text":"]  ","color":"gray"},{"text":"[红队进度: ","color":"red"},{"score":{"name":"*hotspotteamred","objective":"hotspotteamred"},"color":"gold"},{"text":" | CD: ","color":"gray"},{"score":{"name":"*hotspotaddred","objective":"hotspotaddred"},"color":"white"},{"text":"]","color":"gray"}]
fill 378 134 399 376 134 401 air
fill 407 134 355 409 134 353 air
