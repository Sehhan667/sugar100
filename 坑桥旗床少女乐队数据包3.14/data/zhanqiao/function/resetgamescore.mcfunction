scoreboard players set *InGame InGame 0
scoreboard players set *InMLGGame InMLGGame 0 
scoreboard players set *InFlagGame InFlagGame 0
scoreboard players set *InShotGame InShotGame 0
scoreboard players set *InShotGameWin InShotGameWin 0
scoreboard players set *InHotSpotGame InHotSpotGame 0
scoreboard players set *InBoxGame InBoxGame 0
scoreboard players set *InBedGame InBedGame 0

execute as @a at @s run spawnpoint @s 13 105 13



scoreboard players set @a deathCount 0
scoreboard players set @a death 0
tag @a remove carrying_red_flag
tag @a remove carrying_blue_flag
scoreboard players reset @a ammo
scoreboard players reset @a mag
scoreboard players reset @a killed
scoreboard players reset @a timer
scoreboard players reset @a pickedblueFlag
scoreboard players reset @a pickedredFlag
scoreboard players reset *InCSGOGame InCSGOGame
scoreboard players reset *c4position c4position
scoreboard players reset *c4team c4team
kill @e[type=sheep]
kill @e[type=zombie]
kill @e[tag=c4_display]
scoreboard players set *c4time c4time -1
bossbar set minecraft:hotspotblue visible false
bossbar set minecraft:hotspotred visible false
bossbar set lefttime visible false
execute as @a at @s run attribute @s armor base set 0
xp set @a 0 levels
xp set @a 0 points
gamerule keep_inventory true

advancement revoke @a only get_c4
team modify blue nametagVisibility always
team modify red nametagVisibility always
bossbar set minecraft:lefttime visible false
bossbar set wooltime visible false
gamerule fall_damage false
gamerule natural_health_regeneration false
execute if score *mlgauto mlgauto matches 1 run scoreboard players set *ifoldpvp ifoldpvp 0
execute if score *mlgauto mlgauto matches 1 run scoreboard players set *mlgauto mlgauto 0
schedule clear zhanqiao:wait/wait
execute if score *ifoldpvp ifoldpvp matches 1 run function zhanqiao:oldpvp
execute if score *ifoldpvp ifoldpvp matches 0 run function zhanqiao:newpvp