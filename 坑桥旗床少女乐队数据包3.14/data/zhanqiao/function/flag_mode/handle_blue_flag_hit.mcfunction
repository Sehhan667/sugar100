#debug
execute if score *debug debug matches 1 run tellraw @a "handle_blue_flag_hit.mcfunction executed"
# 蓝队玩家（敌人）攻击蓝队旗
execute if entity @s[team=red] run function zhanqiao:flag_mode/pickup_enemy_blue_flag

# 红队玩家（自己人）攻击蓝队旗 -> 检查旗帜是否在基地
execute if entity @s[team=blue] run function zhanqiao:flag_mode/pickup_friendly_blue_flag