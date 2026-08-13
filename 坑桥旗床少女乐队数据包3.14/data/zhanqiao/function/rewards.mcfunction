#debug
execute if score *debug debug matches 1 run tellraw @a {"text":"reward.mcfunction executed","color":"green"}

playsound minecraft:block.amethyst_block.break player @s
say LLL
give @s arrow 2
give @s golden_apple 1
scoreboard players add @s ammo 15