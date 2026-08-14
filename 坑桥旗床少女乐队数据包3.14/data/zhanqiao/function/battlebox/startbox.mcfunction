scoreboard players set *InBoxGame InBoxGame 1

scoreboard players set *InShotGame InShotGame 0

gamerule immediate_respawn true
scoreboard players set *EnableKilledRewards EnableKilledRewards 0
scoreboard players set *EnableOtherRewards EnableOtherRewards 0
gamerule keep_inventory false
gamerule fall_damage true
gamerule natural_health_regeneration true

clear @a[team=blue]
clear @a[team=red]
#execute as @a[team=blue] run function zhanqiao:give/blue
#execute as @a[team=red] run function zhanqiao:give/red
title @a title {"text":"游戏开始","color":"blue"}
scoreboard players set *红队 score 0
scoreboard players set *蓝队 score 0
function zhanqiao:battlebox/boxpreload

scoreboard objectives add wooltime dummy
bossbar add wooltime "羊毛刷新时间"
bossbar set minecraft:wooltime max 1800
bossbar set minecraft:wooltime players @a
#是否低版本pvp
execute if score *ifoldpvp ifoldpvp matches 1 run function zhanqiao:oldpvp
execute if score *ifoldpvp ifoldpvp matches 0 run function zhanqiao:newpvp