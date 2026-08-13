give @s golden_apple 1
execute store result score @s golden_apple run clear @s golden_apple 0
execute if score @s golden_apple matches ..3 run function zhanqiao:give/golden_apple
