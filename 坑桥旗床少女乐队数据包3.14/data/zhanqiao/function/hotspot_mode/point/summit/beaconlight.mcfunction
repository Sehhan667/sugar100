#debug
#execute if score *debug debug matches 1 run tellraw @a "beaconlight.mcfunction executed"



execute if score *hotspotposition hotspotposition matches 3 run fill 353 212 818 351 212 816 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 3 run fill 353 212 818 351 212 816 minecraft:air
execute if score *hotspotposition hotspotposition matches 0 run fill 398 199 839 396 199 837 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 0 run fill 398 199 839 396 199 837 minecraft:air
execute if score *hotspotposition hotspotposition matches 1 run fill 400 199 877 398 199 879 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 1 run fill 400 199 877 398 199 879 minecraft:andesite_slab
execute if score *hotspotposition hotspotposition matches 2 run fill 445 199 832 447 199 830 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 2 run fill 445 199 832 447 199 830 minecraft:andesite_slab