execute store result score #toggle allowchangeweapon if score #toggle allowchangeweapon matches 0
execute if score #toggle allowchangeweapon matches 1 run tellraw @a {text:"已开启允许局内修改武器！",color:"green"}
execute if score #toggle allowchangeweapon matches 0 run tellraw @a {text:"已关闭允许局内修改武器！",color:"red"}
execute if score #toggle allowchangeweapon matches 1 run scoreboard players set *allowchangeweapon allowchangeweapon 1
execute if score #toggle allowchangeweapon matches 0 run scoreboard players set *allowchangeweapon allowchangeweapon 0