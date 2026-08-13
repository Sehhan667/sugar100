give @s blue_concrete 1
execute store result score @s blockCount run clear @s blue_concrete 0
execute if score @s blockCount matches ..191 run function zhanqiao:give/blue_concrete
