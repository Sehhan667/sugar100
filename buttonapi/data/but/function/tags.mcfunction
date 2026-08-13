schedule function but:tags 2t
#execute as @e[nbt={interaction:{}}] at @s run particle end_rod ~ ~-0.2 ~ 0.2 0 0.2 0.1 20 force
execute as @e[tag=but] at @s run function but:tags/spin
execute as @e[tag=aquaglow] at @s run function but:tags/aquaglow
execute as @e[tag=orangeglow] at @s run function but:tags/orangeglow
execute as @e[tag=whiteglow] at @s run function but:tags/whiteglow
#execute as @e[nbt={interaction:{}}] at @s run particle end_rod ~ ~-0.2 ~ 0.2 0 0.2 0.1 20 force