#热点展示实体按占领状态切换：红队占满→红玻璃+redglow，蓝队占满→淡蓝玻璃+aquaglow，否则白玻璃+whiteglow
execute if score *hotspotteamred hotspotteamred matches 199.. run data modify entity @e[tag=spot_display,limit=1] block_state set value {Name:"minecraft:red_stained_glass"}
execute if score *hotspotteamred hotspotteamred matches 199.. run tag @e[tag=spot_display,limit=1] remove whiteglow
execute if score *hotspotteamred hotspotteamred matches 199.. run tag @e[tag=spot_display,limit=1] remove aquaglow
execute if score *hotspotteamred hotspotteamred matches 199.. run tag @e[tag=spot_display,limit=1] add redglow
execute if score *hotspotteamblue hotspotteamblue matches 199.. run execute if score *hotspotteamred hotspotteamred matches ..198 run data modify entity @e[tag=spot_display,limit=1] block_state set value {Name:"minecraft:light_blue_stained_glass"}
execute if score *hotspotteamblue hotspotteamblue matches 199.. run execute if score *hotspotteamred hotspotteamred matches ..198 run tag @e[tag=spot_display,limit=1] remove whiteglow
execute if score *hotspotteamblue hotspotteamblue matches 199.. run execute if score *hotspotteamred hotspotteamred matches ..198 run tag @e[tag=spot_display,limit=1] remove redglow
execute if score *hotspotteamblue hotspotteamblue matches 199.. run execute if score *hotspotteamred hotspotteamred matches ..198 run tag @e[tag=spot_display,limit=1] add aquaglow
execute if score *hotspotteamred hotspotteamred matches ..198 run execute if score *hotspotteamblue hotspotteamblue matches ..198 run data modify entity @e[tag=spot_display,limit=1] block_state set value {Name:"minecraft:white_stained_glass"}
execute if score *hotspotteamred hotspotteamred matches ..198 run execute if score *hotspotteamblue hotspotteamblue matches ..198 run tag @e[tag=spot_display,limit=1] remove redglow
execute if score *hotspotteamred hotspotteamred matches ..198 run execute if score *hotspotteamblue hotspotteamblue matches ..198 run tag @e[tag=spot_display,limit=1] remove aquaglow
execute if score *hotspotteamred hotspotteamred matches ..198 run execute if score *hotspotteamblue hotspotteamblue matches ..198 run tag @e[tag=spot_display,limit=1] add whiteglow
