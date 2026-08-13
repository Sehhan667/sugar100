#execute unless score *anygame anygame matches 1 run return fail
title @a title "GO!"
execute as @a at @s run attribute @s movement_speed base reset
execute as @a at @s run attribute @s jump_strength base reset
execute as @a at @s run playsound block.amethyst_cluster.break ui @s