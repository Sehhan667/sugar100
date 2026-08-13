execute store result score #toggle buildinspot if score #toggle buildinspot matches 0
execute if score #toggle buildinspot matches 1 run tellraw @a {text:"已开启热点建造！",color:"green"}
execute if score #toggle buildinspot matches 0 run tellraw @a {text:"已关闭热点建造！",color:"red"}
execute if score #toggle buildinspot matches 1 run scoreboard players set *buildinspot buildinspot 1
execute if score #toggle buildinspot matches 0 run scoreboard players set *buildinspot buildinspot 0
