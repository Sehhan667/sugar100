execute store result score #toggle EnableOtherRewards if score #toggle EnableOtherRewards matches 0
execute if score #toggle EnableOtherRewards matches 1 run tellraw @a {text:"已开启其他口人奖励！",color:"green"}
execute if score #toggle EnableOtherRewards matches 0 run tellraw @a {text:"已关闭其他口人奖励！",color:"red"}
execute if score #toggle EnableOtherRewards matches 1 run scoreboard players set *EnableOtherRewards EnableOtherRewards 1
execute if score #toggle EnableOtherRewards matches 0 run scoreboard players set *EnableOtherRewards EnableOtherRewards 0