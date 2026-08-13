#debug
execute if score *debug debug matches 1 run tellraw @a "blue scored!"


execute if score *hotspotposition hotspotposition matches 0 positioned 388 201 823 unless entity @a[team=red,dx=19,dy=3,dz=27] run scoreboard players add *蓝队 score 1
execute if score *hotspotposition hotspotposition matches 1 positioned 393 201 875 unless entity @a[team=red,dx=11,dy=3,dz=5] run scoreboard players add *蓝队 score 1
execute if score *hotspotposition hotspotposition matches 2 positioned 442 201 821 unless entity @a[team=red,dx=19,dy=3,dz=12] run scoreboard players add *蓝队 score 1
execute if score *hotspotposition hotspotposition matches 3 positioned 348 204 813 unless entity @a[team=red,dx=15,dy=5,dz=7] run scoreboard players add *蓝队 score 1
scoreboard players set *hotspotaddblue hotspotaddblue 0
