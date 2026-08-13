execute as @s anchored eyes run tp @e[tag=bp50_trigger,limit=1] ^ ^ ^1.2
execute as @e[tag=bp50_trigger,distance=..5] if data entity @s interaction run playsound minecraft:item.crossbow.loading_end player @a
data remove entity @e[tag=bp50_trigger,limit=1,distance=..5] interaction