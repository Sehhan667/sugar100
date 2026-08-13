execute unless score *InCSGOGame InCSGOGame matches 1 run tellraw @a [{"selector":"@s"},{"text":"666这个入开桂了","color": "red"}]
execute if score *InCSGOGame InCSGOGame matches 1 run tellraw @a {text:"红队得分！",color:red}
scoreboard players add *红色 score 1
function zhanqiao:reset
scoreboard players set *c4time c4time -1
execute as @a at @s run playsound ui.toast.challenge_complete player @s
execute as @a[team=red] at @s run say lll
schedule function zhanqiao:wait/wait 1t