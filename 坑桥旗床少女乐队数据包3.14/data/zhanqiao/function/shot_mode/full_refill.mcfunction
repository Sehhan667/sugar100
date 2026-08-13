#scoreboard players set @s mag 30
#scoreboard players remove @s ammo 30
scoreboard players operation @s ammo -= @s temp
execute if score @s mainweapon matches 0 run scoreboard players set @s mag 30
execute if score @s mainweapon matches 3 run scoreboard players set @s mag 6
execute if score @s mainweapon matches 5 run scoreboard players set @s mag 12
execute if score @s mainweapon matches 6 run scoreboard players set @s mag 60