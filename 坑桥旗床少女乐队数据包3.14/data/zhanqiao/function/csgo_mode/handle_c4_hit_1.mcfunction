#debug
execute if score *debug debug matches 1 run tellraw @a "handle_c4_hit_1.mcfunction executed"
tag @s add carrying_c4
title @a title {text:"魔丸已取得c4！",color:red}

give @s stick[item_model=tnt,can_place_on={blocks:"bedrock"},custom_name={text:"c4"}]
kill @e[tag=c4]
kill @e[tag=c4_display]
