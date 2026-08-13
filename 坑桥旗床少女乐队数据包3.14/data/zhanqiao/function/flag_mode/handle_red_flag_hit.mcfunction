#debug
execute if score *debug debug matches 1 run tellraw @a "handle_red_flag_hit.mcfunction executed"
# 蓝队玩家（敌人）攻击红队旗
execute if entity @s[team=blue] run function zhanqiao:flag_mode/pickup_enemy_red_flag

# 红队玩家（自己人）攻击红队旗 -> 检查旗帜是否在基地
execute if entity @s[team=red] run function zhanqiao:flag_mode/pickup_friendly_red_flag