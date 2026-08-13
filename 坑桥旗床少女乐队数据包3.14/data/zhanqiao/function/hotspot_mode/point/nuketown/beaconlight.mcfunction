#debug
#execute if score *debug debug matches 1 run tellraw @a "beaconlight.mcfunction executed"



execute if score *hotspotposition hotspotposition matches 3 run fill 555 140 373 557 140 375 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 3 run fill 555 140 373 557 140 375 minecraft:air
execute if score *hotspotposition hotspotposition matches 0 run fill 552 134 429 554 134 431 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 0 run fill 552 134 429 554 134 431 minecraft:air
execute if score *hotspotposition hotspotposition matches 1 run fill 574 147 404 576 147 406 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 1 run fill 574 147 404 576 147 406 minecraft:andesite_slab
execute if score *hotspotposition hotspotposition matches 2 run fill 529 148 395 527 148 397 minecraft:iron_block
execute unless score *hotspotposition hotspotposition matches 2 run fill 529 148 395 527 148 397 minecraft:andesite_slab