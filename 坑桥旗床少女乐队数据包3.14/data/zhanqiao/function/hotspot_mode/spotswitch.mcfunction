scoreboard players add *hotspotposition hotspotposition 1
title @a title "热点位置已移动！"
#切点清空站点进度
scoreboard players set *hotspotteamred hotspotteamred 0
scoreboard players set *hotspotteamblue hotspotteamblue 0
execute store result score *hotspotspawnposition hotspotspawnposition run random value 0..3

#切点重建热点展示实体（文件内先清后建）
execute if score *map map matches 0 run function zhanqiao:hotspot_mode/point/standoff/spotdisplay
execute if score *map map matches 1 run function zhanqiao:hotspot_mode/point/nuketown/spotdisplay
execute if score *map map matches 5 run function zhanqiao:hotspot_mode/point/summit/spotdisplay
execute if score *map map matches 0 if score *buildinspot buildinspot matches 1 run function zhanqiao:map/standoff
execute if score *map map matches 1 if score *buildinspot buildinspot matches 1 run function zhanqiao:map/nuketown
scoreboard players set *hotspotswitchtime hotspotswitchtime 0
