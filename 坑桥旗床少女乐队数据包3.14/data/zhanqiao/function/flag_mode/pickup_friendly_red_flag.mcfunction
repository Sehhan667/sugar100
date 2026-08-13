#debug
execute if score *debug debug matches 1 run tellraw @a "pickedup_friendly_red_flag executed"

execute if score *map map matches -1 unless entity @e[tag=redflag,x=40.5,y=99,z=-33.5,dx=0,dy=2,dz=0] run function zhanqiao:flag_mode/pickup_enemy_red_flag
execute if entity @e[tag=redflag,x=40.5,y=99,z=-33.5,dx=0,dy=2,dz=0] run playsound minecraft:block.note_block.bell player @s
execute if entity @e[tag=redflag,x=40.5,y=99,z=-33.5,dx=0,dy=2,dz=0] run tellraw @s "你不能把处于基地的我方旗帜带走！"

execute if score *map map matches 0 unless entity @e[tag=redflag,x=363,y=140,z=380,dx=0,dy=2,dz=0] run function zhanqiao:flag_mode/pickup_enemy_red_flag
execute if entity @e[tag=redflag,x=363,y=140,z=380,dx=0,dy=2,dz=0] run playsound minecraft:block.note_block.bell player @s
execute if entity @e[tag=redflag,x=363,y=140,z=380,dx=0,dy=2,dz=0] run tellraw @s "你不能把处于基地的我方旗帜带走！"
