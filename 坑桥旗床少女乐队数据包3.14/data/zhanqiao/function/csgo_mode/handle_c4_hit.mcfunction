#debug
execute if score *debug debug matches 1 run tellraw @a "handle_c4_hit.mcfunction executed"
# 标记玩家持旗及旗帜颜色
#tag @s add carrying_flag
execute as @s if entity @e[type=zombie,distance=..6] run function zhanqiao:csgo_mode/handle_c4_hit_1

# 移除地面旗帜核心和视觉实体
execute if entity @e[type=zombie,distance=5..,limit=1] run tellraw @s "距离过远！"
execute if entity @e[type=zombie,distance=5..,limit=1] run playsound block.amethyst_cluster.break player @s

# 给玩家头盔放上红色旗帜
#item replace entity @a[tag=carrying_red_flag] armor.head with minecraft:red_banner[enchantments={"projectile_protection":13}]

