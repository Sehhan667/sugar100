#对应身份去对应坐标：魔丸（埋包方）去匪家，灵珠（防守方）去警家
execute if score *c4team c4team matches 1 run execute as @a[team=red] at @s run spawnpoint @s 739 141 168
execute if score *c4team c4team matches 1 run execute as @a[team=red] at @s run tp @s 739.5 141.0 168.5
execute if score *c4team c4team matches 1 run execute as @a[team=blue] at @s run spawnpoint @s 739 145 391
execute if score *c4team c4team matches 1 run execute as @a[team=blue] at @s run tp @s 739.5 145.0 391.5

execute if score *c4team c4team matches 0 run execute as @a[team=blue] at @s run spawnpoint @s 739 141 168
execute if score *c4team c4team matches 0 run execute as @a[team=blue] at @s run tp @s 739.5 141.0 168.5
execute if score *c4team c4team matches 0 run execute as @a[team=red] at @s run spawnpoint @s 739 145 391
execute if score *c4team c4team matches 0 run execute as @a[team=red] at @s run tp @s 739.5 145.0 391.5
