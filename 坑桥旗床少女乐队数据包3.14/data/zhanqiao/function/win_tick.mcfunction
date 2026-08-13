#常规战桥胜利判断
execute if score *InGame InGame matches 1 run execute positioned 33 101 -32 as @a[team=blue,dx=2,dz=2] at @s run function zhanqiao:bluewin
execute if score *InGame InGame matches 1 run execute positioned 33 101 52 as @a[team=red,dx=2,dz=2] at @s run function zhanqiao:redwin





#MLG胜利判断
execute if score *InMLGGame InMLGGame matches 1 run function zhanqiao:mlg_mode/beddetect