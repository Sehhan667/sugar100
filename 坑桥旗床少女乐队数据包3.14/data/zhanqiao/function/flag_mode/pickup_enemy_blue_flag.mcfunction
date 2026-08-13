#debug
execute if score *debug debug matches 1 run tellraw @a "pickup_enemy_blue_flag.mcfunction executed"
# 如果自己已经持有旗帜则不能拾取

# 标记玩家持旗及旗帜颜色
#tag @s add carrying_flag
tag @s add carrying_blue_flag

# 移除地面旗帜核心和视觉实体
kill @e[type=zombie,tag=blueflag]
kill @e[tag=blueflag_display]

# 给玩家头盔放上红色旗帜
item replace entity @a[tag=carrying_blue_flag] armor.head with minecraft:blue_banner

