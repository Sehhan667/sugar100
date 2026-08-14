execute if score #toggle maxc4timeset matches 1 run scoreboard players set #toggle maxc4timeset 2
execute if score #toggle maxc4timeset matches 2 run scoreboard players set #toggle maxc4timeset 3
execute if score #toggle maxc4timeset matches 3 run scoreboard players set #toggle maxc4timeset 4
execute if score #toggle maxc4timeset matches 4 run scoreboard players set #toggle maxc4timeset 5
execute if score #toggle maxc4timeset matches 5 run scoreboard players set #toggle maxc4timeset 6
execute if score #toggle maxc4timeset matches 6 run scoreboard players set #toggle maxc4timeset 1





execute if score #toggle maxc4timeset matches 1 run scoreboard players set *maxc4time maxc4time 800
execute if score #toggle maxc4timeset matches 2 run scoreboard players set *maxc4time maxc4time 1200
execute if score #toggle maxc4timeset matches 3 run scoreboard players set *maxc4time maxc4time 1800
execute if score #toggle maxc4timeset matches 4 run scoreboard players set *maxc4time maxc4time 2400
execute if score #toggle maxc4timeset matches 5 run scoreboard players set *maxc4time maxc4time 3000
execute if score #toggle maxc4timeset matches 6 run scoreboard players set *maxc4time maxc4time 3600
execute if score #toggle maxc4timeset matches 1 run tellraw @a {text:"C4爆炸时间已设为40秒！",color:"green"}
execute if score #toggle maxc4timeset matches 2 run tellraw @a {text:"C4爆炸时间已设为60秒！",color:"green"}
execute if score #toggle maxc4timeset matches 3 run tellraw @a {text:"C4爆炸时间已设为90秒！",color:"green"}
execute if score #toggle maxc4timeset matches 4 run tellraw @a {text:"C4爆炸时间已设为120秒！",color:"green"}
execute if score #toggle maxc4timeset matches 5 run tellraw @a {text:"C4爆炸时间已设为150秒！",color:"green"}
execute if score #toggle maxc4timeset matches 6 run tellraw @a {text:"C4爆炸时间已设为180秒！",color:"green"}