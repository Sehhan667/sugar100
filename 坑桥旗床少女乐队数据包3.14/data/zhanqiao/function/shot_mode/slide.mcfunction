#debug
execute if score *debug debug matches 1 run tellraw @a "slide.mcfunction executed"

execute if score @s mainweapon matches 3 run scoreboard players set @s slidetime 6
execute if score @s mainweapon matches 3 run scoreboard players set @s slidecd 35