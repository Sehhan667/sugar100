#debug
execute if score *debug debug matches 1 run tellraw @a "blue scored!"


execute if score *hotspotposition hotspotposition matches 0 positioned 544 136 425 unless entity @a[team=red,dx=19,dy=3,dz=5] run scoreboard players add *蓝队 score 1
execute if score *hotspotposition hotspotposition matches 1 positioned 570 136 402 unless entity @a[team=red,dx=21,dy=3,dz=9] run scoreboard players add *蓝队 score 1
execute if score *hotspotposition hotspotposition matches 2 positioned 520 136 390 unless entity @a[team=red,dx=15,dy=3,dz=10] run scoreboard players add *蓝队 score 1
execute if score *hotspotposition hotspotposition matches 3 positioned 538 136 371 unless entity @a[team=red,dx=31,dy=3,dz=8] run scoreboard players add *蓝队 score 1
scoreboard players set *hotspotaddblue hotspotaddblue 0
