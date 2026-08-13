#debug
execute if score *debug debug matches 1 run tellraw @a "c4_spawn.mcfunction executed"

execute as @a[tag=carrying_c4] run summon zombie ~ ~ ~ {Tags:["c"],PersistenceRequired:true,NoAI:1b,Silent:1b,CustomName:'C4'}
#team join red @e[tag=redflag]
#team join blue @e[tag=blueflag]
item replace entity @e[tag=c4] weapon.mainhand with air
item replace entity @e[tag=c4] armor.head with air
effect give @e[tag=c4] resistance infinite 255 true
effect give @e[tag=c4] invisibility infinite 255 true
effect give @e[tag=c4] fire_resistance infinite 255 true
#item replace entity @e[type=zombie,tag=blueflag] armor.head with minecraft:blue_banner