setblock -191 112 -182 obsidian
#安置c4后移除包点展示实体
kill @e[tag=c4site_display]
scoreboard players set *c4position c4position 0
tag @a remove carrying_c4
scoreboard objectives add c4time dummy
function zhanqiao:csgo_mode/c4time
title @a title "炸弹已安放！"
execute as @a at @s run playsound entity.ender_dragon.hurt player @s
bossbar set minecraft:time visible true
clear @a[tag=!carrying_c4] stick