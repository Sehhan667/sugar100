#debug
execute if score *debug debug matches 1 run tellraw @a "startshot.mcfunction executed"
scoreboard players set *InFlagGame InFlagGame 0
scoreboard players set *InShotGame InShotGame 1
scoreboard players set *InShotGameWin InShotGameWin 1
gamerule immediate_respawn true


clear @a[team=blue]
clear @a[team=red]
#execute as @a[team=blue] run function zhanqiao:give/blue
#execute as @a[team=red] run function zhanqiao:give/red
tellraw @a {"text":"","color":"yellow"}
title @a subtitle {"text":"哪队先口死30个就赢！","color":"yellow"}
title @a title {"text":"跑跑跑射射射！","color":"blue"}
execute if score *InShotGame InShotGame matches 1 run tellraw @a "在弹夹打空时长按右键换弹，或者，你可以把武器放在副手长按右键换弹"
scoreboard players set *红队 score 0
scoreboard players set *蓝队 score 0
function zhanqiao:reset
gamemode survival @a
