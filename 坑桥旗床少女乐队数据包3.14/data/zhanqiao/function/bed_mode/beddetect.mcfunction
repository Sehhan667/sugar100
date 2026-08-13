execute if block 38 104 47 air run function zhanqiao:redwin
execute if block 31 104 -23 air run function zhanqiao:bluewin

execute if score *蓝队 score matches 2.. run function zhanqiao:blue_gg
execute if score *红色 score matches 2.. run function zhanqiao:red_gg
execute as @a[team=blue] at @s run spawnpoint @s 34 105 48
execute as @a[team=red] at @s run spawnpoint @s 35 105 -24