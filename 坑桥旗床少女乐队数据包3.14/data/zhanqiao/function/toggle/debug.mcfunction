execute store result score #toggle debug if score #toggle debug matches 0
execute if score #toggle debug matches 1 run tellraw @a {text:"已开启debug！",color:"green"}
execute if score #toggle debug matches 0 run tellraw @a {text:"已关闭debug！",color:"red"}
execute if score #toggle debug matches 1 run scoreboard players set *debug debug 1
execute if score #toggle debug matches 0 run scoreboard players set *debug debug 0