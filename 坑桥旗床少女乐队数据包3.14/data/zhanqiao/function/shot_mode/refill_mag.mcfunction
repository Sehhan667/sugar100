
execute if score @s mainweapon matches 0 run scoreboard players set @s temp 30
execute if score @s mainweapon matches 3 run scoreboard players set @s temp 6
execute if score @s mainweapon matches 5 run scoreboard players set @s temp 12
execute if score @s mainweapon matches 6 run scoreboard players set @s temp 60


scoreboard players operation @s temp -= @s mag
execute if score @s ammo >= @s temp run function zhanqiao:shot_mode/full_refill
execute if score @s ammo < @s temp run function zhanqiao:shot_mode/partial_refill
    