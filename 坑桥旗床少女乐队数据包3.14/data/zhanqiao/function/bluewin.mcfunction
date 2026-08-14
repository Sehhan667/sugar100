execute unless score *InCSGOGame InCSGOGame matches 1 run tellraw @a [{"selector":"@s"},{"text":"666这个入开桂了","color": "blue"}]
execute if score *InCSGOGame InCSGOGame matches 1 run tellraw @a {text:"蓝队得分！",color:blue}
scoreboard players add *蓝队 score 1
function zhanqiao:reset
scoreboard players set *c4time c4time -1
execute as @a at @s run playsound ui.toast.challenge_complete player @s
execute as @a[team=blue] at @s run say lll
#execute if score *anygame anygame matches 1 run schedule function zhanqiao:wait/wait 1t
schedule function zhanqiao:wait/wait 1t