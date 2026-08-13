#debug
execute if score *debug debug matches 1 run tellraw @a "blue scored!"


execute if score *hotspotposition hotspotposition matches 0 positioned 380 136 402 unless entity @a[team=red,dx=15,dy=3,dz=7] run scoreboard players add *蓝队 score 1
execute if score *hotspotposition hotspotposition matches 1 positioned 399 136 439 unless entity @a[team=red,dx=5,dy=3,dz=15] run scoreboard players add *蓝队 score 1
execute if score *hotspotposition hotspotposition matches 2 positioned 431 136 401 unless entity @a[team=red,dx=10,dy=3,dz=14] run scoreboard players add *蓝队 score 1
execute if score *hotspotposition hotspotposition matches 3 positioned 361 140 377 unless entity @a[team=red,dx=5,dy=3,dz=6] run scoreboard players add *蓝队 score 1
scoreboard players set *hotspotaddblue hotspotaddblue 0
