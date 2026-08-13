#debug
execute if score *debug debug matches 1 run tellraw @a "drop_blue_flag.mcfunction executed"

execute as @a[tag=carrying_blue_flag] run function zhanqiao:flag_mode/blue_flag_spawn

#猎奇操作之把蓝旗僵尸t到死者
tp @e[type=zombie,tag=blueflag] @a[tag=carrying_blue_flag,limit=1]

execute as @a[tag=carrying_blue_flag] run item replace entity @a[tag=carrying_blue_flag] armor.head with minecraft:air
execute as @a[tag=carrying_blue_flag] run tag @a remove carrying_blue_flag




scoreboard players set @a deathCount 0