advancement revoke @s only minecraft:ammo_reduce
execute if score @s mag matches 1.. run scoreboard players remove @s mag 1

execute as @s if items entity @s weapon.mainhand crossbow[custom_data={type:"m700"}] run tag @e[type=arrow,sort=nearest,limit=1,distance=..2] add mot
execute as @s if items entity @s weapon.mainhand crossbow[custom_data={type:"m700"}] run tag @e[type=arrow,sort=nearest,limit=1,distance=..2] add m700_bullet
execute as @s if items entity @s weapon.mainhand crossbow[custom_data={type:"fennec"}] run tag @e[type=arrow,sort=nearest,limit=1,distance=..2] add fennec_bullet
execute as @s if items entity @s weapon.mainhand crossbow[custom_data={type:"mg42"}] run tag @e[type=arrow,sort=nearest,limit=1,distance=..2] add mg42_bullet
execute as @s if items entity @s weapon.mainhand crossbow[custom_data={type:"ots9"}] run tag @e[type=arrow,sort=nearest,limit=1,distance=..2] add ots9_bullet
execute as @s if items entity @s weapon.mainhand crossbow[custom_data={type:"manowar"}] run tag @e[type=arrow,sort=nearest,limit=1,distance=..2] add manowar_bullet

#子弹加速
tag @e[type=arrow] add mot
tag @e[type=lingering_potion] add mot



execute as @s if items entity @s weapon.mainhand crossbow[custom_data~{"type":"krm262"}] run function zhanqiao:shot_mode/krm262

#execute as @a at @s run attribute @s knockback_resistance base set 999