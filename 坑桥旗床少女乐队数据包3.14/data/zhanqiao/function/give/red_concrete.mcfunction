give @s red_concrete 1
execute store result score @s blockCount run clear @s red_concrete 0
execute if score @s blockCount matches ..191 run function zhanqiao:give/red_concrete
