#debug
execute if score *debug debug matches 1 run tellraw @a "handle_red_flag_hit.mcfunction executed"
execute if entity @s[tag=carrying_red_flag] run tellraw @s "你已经持有旗帜了！"
execute if entity @s[tag=carrying_red_flag] run return fail
execute if entity @s[tag=carrying_blue_flag] run tellraw @s "你已经持有旗帜了！"
execute if entity @s[tag=carrying_blue_flag] run return fail
# 蓝队玩家（敌人）攻击红队旗
execute if entity @s[team=blue] run function zhanqiao:flag_mode/pickup_enemy_red_flag

# 红队玩家（自己人）攻击红队旗 -> 检查旗帜是否在基地
execute if entity @s[team=red] run function zhanqiao:flag_mode/pickup_friendly_red_flag