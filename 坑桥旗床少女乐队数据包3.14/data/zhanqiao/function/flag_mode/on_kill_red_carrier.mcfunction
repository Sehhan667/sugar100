#debug
execute if score *debug debug matches 1 run tellraw @a "on_kill_red_carrier.mcfunction executed"


#执行者切换为死者
execute as @s run function zhanqiao:flag_mode/drop_red_flag
#撤销进度
advancement revoke @s only minecraft:red_flag_drop