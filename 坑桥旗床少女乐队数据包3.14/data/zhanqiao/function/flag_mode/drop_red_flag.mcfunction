#debug
execute if score *debug debug matches 1 run tellraw @a "drop_red_flag.mcfunction executed"

execute as @a[tag=carrying_red_flag] run function zhanqiao:flag_mode/red_flag_spawn

#猎奇操作之把红旗僵尸t到死者
tp @e[type=zombie,tag=redflag] @a[tag=carrying_red_flag,limit=1]

execute as @a[tag=carrying_red_flag] run item replace entity @a[tag=carrying_red_flag] armor.head with minecraft:air
execute as @a[tag=carrying_red_flag] run tag @a remove carrying_red_flag




scoreboard players set @a deathCount 0