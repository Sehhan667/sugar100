execute store result score #toggle EnableKilledRewards if score #toggle EnableKilledRewards matches 0
execute if score #toggle EnableKilledRewards matches 1 run tellraw @a {text:"已开启口人奖励！",color:"green"}
execute if score #toggle EnableKilledRewards matches 0 run tellraw @a {text:"已关闭口人奖励！",color:"red"}
execute if score #toggle EnableKilledRewards matches 1 run scoreboard players set *EnableKilledRewards EnableKilledRewards 1
execute if score #toggle EnableKilledRewards matches 0 run scoreboard players set *EnableKilledRewards EnableKilledRewards 0