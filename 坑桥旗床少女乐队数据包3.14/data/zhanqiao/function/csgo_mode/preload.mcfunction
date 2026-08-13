forceload remove all
gamemode spectator @a
execute if score *map map matches 0 run forceload add 460 437 335 358
execute if score *map map matches 1 run forceload add 488 373 616 409
execute if score *map map matches 2 run forceload add -200 -120 -300 -150
execute if score *map map matches 4 run forceload add 425 536 444 646
execute if score *map map matches 5 run forceload add 313 856 488 840
execute if score *map map matches 6 run forceload add 361 215 505 147

title @a title "正在预加载地图..."
title @a subtitle "请稍后，为了等会服务器不会飞起来，这是必须的"

schedule clear zhanqiao:reset
schedule function zhanqiao:reset 6s replace
fill 354 146 379 356 146 381 minecraft:air
fill 387 134 405 389 134 407 minecraft:air
fill 400 147 445 402 147 447 minecraft:andesite_slab
fill 430 148 408 432 148 410 minecraft:andesite_slab