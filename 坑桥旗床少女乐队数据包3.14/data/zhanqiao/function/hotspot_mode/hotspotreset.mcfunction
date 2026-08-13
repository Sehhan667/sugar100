gamemode adventure @a[team=blue]
gamemode adventure @a[team=red]
execute if score *buildinspot buildinspot matches 1 run gamemode survival @a[team=blue]
execute if score *buildinspot buildinspot matches 1 run gamemode survival @a[team=red]



scoreboard players set *hotspotposition hotspotposition 0
scoreboard players set *hotspotteamblue hotspotteamblue 0
scoreboard players set *hotspotteamred hotspotteamred 0
scoreboard players set *hotspotposition hotspotposition 0
scoreboard players set *hotspotteamblue hotspotteamblue 0
scoreboard players set *hotspotteamred hotspotteamred 0
scoreboard players set *hotspotteamblue hotspotteamblue 0
scoreboard players set *hotspotaddblue hotspotaddblue 0
scoreboard players set *hotspotaddred hotspotaddred 0
scoreboard players set *hotspotswitchtime hotspotswitchtime 0
scoreboard players reset *hotspotspawnposition hotspotspawnposition 
bossbar add hotspotblue "热点进度"
bossbar set hotspotblue max 200
bossbar set minecraft:hotspotblue visible true
bossbar set hotspotblue color blue
bossbar add hotspotred "热点进度"
bossbar set hotspotred max 200
bossbar set minecraft:hotspotred visible true
bossbar set hotspotred color red
