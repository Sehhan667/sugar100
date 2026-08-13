#debug
#execute if score *debug debug matches 1 run tellraw @a "beaconlight.mcfunction executed"



execute if score *hotspotposition hotspotposition matches 3 run fill 354 146 379 356 146 381 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 3 run fill 354 146 379 356 146 381 minecraft:air
execute if score *hotspotposition hotspotposition matches 0 run fill 387 134 405 389 134 407 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 0 run fill 387 134 405 389 134 407 minecraft:air
execute if score *hotspotposition hotspotposition matches 1 run fill 400 147 445 402 147 447 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 1 run fill 400 147 445 402 147 447 minecraft:andesite_slab
execute if score *hotspotposition hotspotposition matches 2 run fill 430 148 408 432 148 410 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 2 run fill 430 148 408 432 148 410 minecraft:andesite_slab