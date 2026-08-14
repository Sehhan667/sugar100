execute if score #toggle maxlefttimeset matches 1 run scoreboard players set #toggle maxlefttimeset 2
execute if score #toggle maxlefttimeset matches 2 run scoreboard players set #toggle maxlefttimeset 3
execute if score #toggle maxlefttimeset matches 3 run scoreboard players set #toggle maxlefttimeset 4
execute if score #toggle maxlefttimeset matches 4 run scoreboard players set #toggle maxlefttimeset 5
execute if score #toggle maxlefttimeset matches 5 run scoreboard players set #toggle maxlefttimeset 6
#execute if score #toggle maxlefttimeset matches 6 run scoreboard players set #toggle maxlefttimeset 1





execute if score #toggle maxlefttimeset matches 1 run scoreboard players set *maxlefttime maxlefttime 1200
execute if score #toggle maxlefttimeset matches 2 run scoreboard players set *maxlefttime maxlefttime 2400
execute if score #toggle maxlefttimeset matches 3 run scoreboard players set *maxlefttime maxlefttime 3600
execute if score #toggle maxlefttimeset matches 4 run scoreboard players set *maxlefttime maxlefttime 4800
execute if score #toggle maxlefttimeset matches 5 run scoreboard players set *maxlefttime maxlefttime 6000
execute if score #toggle maxlefttimeset matches 6 run scoreboard players set *maxlefttime maxlefttime 7200
execute if score #toggle maxlefttimeset matches 1 run tellraw @a {text:"c4安装时间已设为1分钟！",color:"green"}
execute if score #toggle maxlefttimeset matches 2 run tellraw @a {text:"c4安装时间已设为2分钟！",color:"green"}
execute if score #toggle maxlefttimeset matches 3 run tellraw @a {text:"c4安装时间已设为3分钟！",color:"green"}
execute if score #toggle maxlefttimeset matches 4 run tellraw @a {text:"c4安装时间已设为4分钟！",color:"green"}
execute if score #toggle maxlefttimeset matches 5 run tellraw @a {text:"c4安装时间已设为5分钟！",color:"green"}
execute if score #toggle maxlefttimeset matches 6 run tellraw @a {text:"c4安装时间已设为6分钟！",color:"green"}