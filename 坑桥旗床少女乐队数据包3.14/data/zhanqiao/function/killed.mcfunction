tellraw @a [{"selector":"@s","color":"green"},{"text":"击杀了玩家，获得1颗风弹并回复4心！"}]
give @s wind_charge 1
effect give @s instant_health 1 1 true
playsound minecraft:block.amethyst_block.break player @s
say LLL