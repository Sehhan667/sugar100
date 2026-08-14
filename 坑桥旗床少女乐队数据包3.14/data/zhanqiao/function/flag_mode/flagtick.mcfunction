execute if score *蓝队 score matches 5.. run function zhanqiao:blue_gg
execute if score *红队 score matches 5.. run function zhanqiao:red_gg
#flag模式专用tick
execute if score *map map matches -1 positioned 7 92 -48 as @a[dx=53,dy=-3,dz=118,gamemode=survival,tag=carrying_red_flag] run function zhanqiao:reset
execute if score *map map matches -1 positioned 7 92 -48 as @a[dx=53,dy=-3,dz=118,gamemode=survival,tag=carrying_blue_flag] run function zhanqiao:reset

#execute if score *map map matches -1 positioned 7 92 -48 as @a[dx=53,dy=-3,dz=118,gamemode=survival,tag=carrying_red_flag] run tellraw @a "有个泌阳得把旗帜弄丢了！"
#execute if score *map map matches -1 positioned 7 92 -48 as @a[dx=53,dy=-3,dz=118,gamemode=survival,tag=carrying_blue_flag] run tellraw @a "有个泌阳得把旗帜弄丢了！"

#execute if score *map map matches -1 positioned 7 92 -48 as @e[dx=53,dy=-3,dz=118,tag=redflag] run tp @e[tag=redflag] 40 98 -33
#execute if score *map map matches -1 positioned 7 92 -48 as @e[dx=53,dy=-3,dz=118,tag=blueflag] run tp @e[tag=blueflag] 27 98 57

execute as @a[tag=carrying_red_flag] run effect give @s glowing 1 0 true
execute as @a[tag=carrying_blue_flag] run effect give @s glowing 1 0 true


execute if score *map map matches -1 run fill 25 99 56 25 100 56 air
execute if score *map map matches -1 run fill 43 99 -33 43 100 -33 air
execute as @a[tag=carrying_red_flag] run effect give @s slowness 1 0 true
execute as @a[tag=carrying_blue_flag] run effect give @s slowness 1 0 true
execute as @a[tag=carrying_red_flag] run effect give @s slow_falling 1 0 true
execute as @a[tag=carrying_blue_flag] run effect give @s slow_falling 1 0 true
title @a[tag=carrying_red_flag] actionbar {"text":"你正在携带红队旗帜！","color":"red"}
title @a[tag=carrying_blue_flag] actionbar {"text":"你正在携带蓝队旗帜！","color":"blue"}
execute if score *map map matches -1 as @a[team=blue] at @s run spawnpoint @s 25 100 56
execute if score *map map matches -1 as @a[team=red] at @s run spawnpoint @s 43 100 -32

execute if score *map map matches 0 as @a[team=blue] at @s run spawnpoint @s 451 137 432
execute if score *map map matches 0 as @a[team=red] at @s run spawnpoint @s 345 137 363





execute as @a[tag=carrying_red_flag,scores={deathCount=1..}] run function zhanqiao:flag_mode/drop_red_flag
execute as @a[tag=carrying_blue_flag,scores={deathCount=1..}] run function zhanqiao:flag_mode/drop_blue_flag



#夺旗胜利判断
execute as @e[tag=blueflag,x=439,y=136,z=446,dx=0,dy=2,dz=0] run execute as @a[team=blue,tag=carrying_red_flag,x=439,y=136,z=446,dx=0,dy=2,dz=0] run function zhanqiao:bluewin
execute as @e[tag=redflag,x=363,y=140,z=380,dx=0,dy=2,dz=0] run execute as @a[team=red,tag=carrying_blue_flag,x=363,y=140,z=380,dx=0,dy=2,dz=0] run function zhanqiao:redwin


#execute if score *InFlagGame InFlagGame matches 1 run execute positioned 27 98 57 as @a[team=blue,tag=carrying_red_flag,dx=0,dy=3,dz=0] at @s run function zhanqiao:bluewin
#execute if score *InFlagGame InFlagGame matches 1 run execute positioned 41 98 -33 as @a[team=red,tag=carrying_blue_flag,dx=0,dy=0,dz=0] at @s run function zhanqiao:redwin

#旗帜归还判断
execute as @a[team=blue,tag=carrying_blue_flag,x=439,y=136,z=446,dx=0,dy=2,dz=0] run function zhanqiao:flag_mode/drop_blue_flag
execute as @a[team=red,tag=carrying_red_flag,x=363,y=140,z=380,dx=0,dy=2,dz=0] run function zhanqiao:flag_mode/drop_red_flag



#夺旗胜利判断
execute as @e[tag=blueflag,x=26.5,y=99,z=56.5,dx=0,dy=2,dz=0] run execute as @a[team=blue,tag=carrying_red_flag,x=26.5,y=99,z=56.5,dx=0,dy=2,dz=0] run function zhanqiao:bluewin
execute as @e[tag=redflag,x=40.5,y=99,z=-33.5,dx=0,dy=2,dz=0] run execute as @a[team=red,tag=carrying_blue_flag,x=40.5,y=99,z=-33.5,dx=0,dy=2,dz=0] run function zhanqiao:redwin


#execute if score *InFlagGame InFlagGame matches 1 run execute positioned 27 98 57 as @a[team=blue,tag=carrying_red_flag,dx=0,dy=3,dz=0] at @s run function zhanqiao:bluewin
#execute if score *InFlagGame InFlagGame matches 1 run execute positioned 41 98 -33 as @a[team=red,tag=carrying_blue_flag,dx=0,dy=0,dz=0] at @s run function zhanqiao:redwin

#旗帜归还判断
execute as @a[team=blue,tag=carrying_blue_flag,x=26.5,y=99,z=56.5,dx=0,dy=2,dz=0] run function zhanqiao:flag_mode/drop_blue_flag
execute as @a[team=red,tag=carrying_red_flag,x=40.5,y=99,z=-33.5,dx=0,dy=2,dz=0] run function zhanqiao:flag_mode/drop_red_flag


#旗帜僵尸：完全隐形（卸掉装备和名字），用旗帜方块展示实体作为视觉替代（同c4方案）
item replace entity @e[tag=redflag,type=zombie] weapon.mainhand with air
item replace entity @e[tag=blueflag,type=zombie] weapon.mainhand with air
item replace entity @e[tag=redflag,type=zombie] armor.head with air
item replace entity @e[tag=blueflag,type=zombie] armor.head with air
effect give @e[tag=redflag,type=zombie] resistance infinite 255 true
effect give @e[tag=redflag,type=zombie] invisibility infinite 255 true
effect give @e[tag=redflag,type=zombie] fire_resistance infinite 255 true
effect give @e[tag=blueflag,type=zombie] resistance infinite 255 true
effect give @e[tag=blueflag,type=zombie] invisibility infinite 255 true
effect give @e[tag=blueflag,type=zombie] fire_resistance infinite 255 true
execute as @e[tag=redflag,type=zombie] run data remove entity @s CustomName
execute as @e[tag=blueflag,type=zombie] run data remove entity @s CustomName
#清除火焰状态，防止隐形僵尸残留燃烧特效（火抗只免伤不免视觉）
execute as @e[type=zombie,tag=redflag] run data merge entity @s {Fire:-20}
execute as @e[type=zombie,tag=blueflag] run data merge entity @s {Fire:-20}
execute as @e[type=zombie] at @s run teleport @s ~ ~ ~ 1 1