scoreboard players add @s rotatebut 3
execute as @s if score @s rotatebut matches 360.. run scoreboard players set @s rotatebut 0
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s rotatebut
execute as @s at @s run data merge entity @s {teleport_duration:2}