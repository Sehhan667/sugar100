
execute as @s at @s run particle end_rod ~ ~ ~ 0.2 0 0.2 0.1 2 force
data merge entity @s {Glowing:1b,glow_color_override:16777215}