execute store result score #toggle ifoldpvp if score #toggle ifoldpvp matches 0
execute if score #toggle ifoldpvp matches 1 run tellraw @a {text:"已开启低版本pvp！",color:"green"}
execute if score #toggle ifoldpvp matches 0 run tellraw @a {text:"已关闭低版本pvp！",color:"red"}
execute if score #toggle ifoldpvp matches 1 run scoreboard players set *ifoldpvp ifoldpvp 1
execute if score #toggle ifoldpvp matches 0 run scoreboard players set *ifoldpvp ifoldpvp 0
execute if score *ifoldpvp ifoldpvp matches 1 run function zhanqiao:oldpvp
execute if score *ifoldpvp ifoldpvp matches 0 run function zhanqiao:newpvp