#debug
execute if score *debug debug matches 1 run tellraw @a "get_C4.mcfunction executed"
# 如果玩家已持旗，直接取消（可选）
#execute if entity @s[tag=carrying_flag] run function zhanqiao:hit_flag_already_carrying

#execute if entity @s[tag=carrying_blue_flag] run advancement revoke @s only minecraft:get_red_flag
#execute if entity @s[tag=carrying_flag] run return fail

# 检测附近的红队旗帜核心
execute if entity @s[tag=mowan] run execute as @s run function zhanqiao:csgo_mode/handle_c4_hit
execute as @s[tag=lingzhu] run tellraw @s "灵珠不能拾取C4！" 
#execute if entity @s[tag=carrying_blue_flag] run tellraw @s {"text":"你已经拿着蓝队旗了！","color":"blue"}
# 撤销进度（必须）
advancement revoke @s only minecraft:get_c4