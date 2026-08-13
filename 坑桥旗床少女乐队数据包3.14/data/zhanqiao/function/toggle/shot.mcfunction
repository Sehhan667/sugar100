execute store result score #toggle shot if score #toggle shot matches 0
execute if score #toggle shot matches 1 run tellraw @a {text:"已开启全局射射射！",color:"green"}
execute if score #toggle shot matches 0 run tellraw @a {text:"已关闭全局射射射！",color:"red"}
execute if score #toggle shot matches 1 run scoreboard players set *shot shot 1
execute if score #toggle shot matches 0 run scoreboard players set *shot shot 0