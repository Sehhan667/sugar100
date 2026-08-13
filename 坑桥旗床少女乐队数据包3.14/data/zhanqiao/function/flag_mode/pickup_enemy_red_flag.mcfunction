#debug
execute if score *debug debug matches 1 run tellraw @a "pickup_enemy_red_flag.mcfunction executed"
# 标记玩家持旗及旗帜颜色
#tag @s add carrying_flag
tag @s add carrying_red_flag

# 移除地面旗帜核心和视觉实体
kill @e[type=zombie,tag=redflag]

# 给玩家头盔放上红色旗帜
item replace entity @a[tag=carrying_red_flag] armor.head with minecraft:red_banner

