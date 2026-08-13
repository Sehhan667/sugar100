#debug
execute if score *debug debug matches 1 run tellraw @a "pickedup_friendly_blue_flag executed"


execute if score *map map matches -1 unless entity @e[tag=blueflag,x=26.5,y=99,z=56.5,dx=0,dy=2,dz=0] run function zhanqiao:flag_mode/pickup_enemy_blue_flag
execute if entity @e[tag=blueflag,x=26.5,y=99,z=56.5,dx=0,dy=2,dz=0] run playsound minecraft:block.note_block.bell player @s
execute if entity @e[tag=blueflag,x=26.5,y=99,z=56.5,dx=0,dy=2,dz=0] run tellraw @s "你不能把处于基地的我方旗帜带走！"


execute if score *map map matches 0 unless entity @e[tag=blueflag,x=439,y=136,z=446,dx=0,dy=2,dz=0] run function zhanqiao:flag_mode/pickup_enemy_blue_flag
execute if entity @e[tag=blueflag,x=439,y=136,z=446,dx=0,dy=2,dz=0] run playsound minecraft:block.note_block.bell player @s
execute if entity @e[tag=blueflag,x=439,y=136,z=446,dx=0,dy=2,dz=0] run tellraw @s "你不能把处于基地的我方旗帜带走！"