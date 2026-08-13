#execute if blocks 593 162 128 596 162 125 611 143 183 all run function zhanqiao:battlebox/blueboxed
#execute if blocks 593 162 128 596 162 125 604 143 183 all run function zhanqiao:battlebox/redboxed
execute if score *蓝队 score matches 10.. run function zhanqiao:blue_gg
execute if score *红色 score matches 10.. run function zhanqiao:red_gg
fill 547 185 174 642 185 79 air
fill 551 146 170 551 147 170 air
fill 638 143 83 638 144 83 air
execute if score *wooltime wooltime matches 1.. run scoreboard players remove *wooltime wooltime 1
execute if score *wooltime wooltime matches ..0 run function zhanqiao:battlebox/wool
execute store result bossbar minecraft:wooltime value run scoreboard players get *wooltime wooltime
setblock 605 133 135 beehive
setblock 587 156 127 beehive
#fill 596 161 128 593 161 125 stripped_pale_oak_wood
setblock 548 143 80 bookshelf
setblock 624 145 162 obsidian
setblock 604 161 120 minecraft:stripped_pale_oak_wood
setblock 604 161 133 minecraft:stripped_pale_oak_wood
#setblock 558 146 170 tripwire
setblock 558 146 172 hay_block
#setblock 634 143 82 tripwire
setblock 634 143 80 hay_block
execute if block 604 162 133 light_blue_wool run function zhanqiao:battlebox/blueboxed
execute if block 604 162 120 light_blue_wool run function zhanqiao:battlebox/blueboxed
execute if block 604 162 133 red_wool run function zhanqiao:battlebox/redboxed
execute if block 604 162 120 red_wool run function zhanqiao:battlebox/redboxed