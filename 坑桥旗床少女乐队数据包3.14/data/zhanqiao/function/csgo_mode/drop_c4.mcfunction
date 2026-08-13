#debug
execute if score *debug debug matches 1 run tellraw @a "drop_c4.mcfunction executed"
#gamerule immediate_respawn false
execute as @a[tag=carrying_c4] run function zhanqiao:csgo_mode/c4_spawn

#猎奇操作之把蓝旗僵尸t到死者
tp @e[type=zombie,tag=c] @a[tag=carrying_c4,limit=1]

#execute as @a[tag=carrying_c4] run item replace entity @a[tag=carrying_blue_flag] armor.head with minecraft:air
execute as @a[tag=carrying_c4] run tag @s remove carrying_c4


#gamerule immediate_respawn true

scoreboard players set @a deathCount 0