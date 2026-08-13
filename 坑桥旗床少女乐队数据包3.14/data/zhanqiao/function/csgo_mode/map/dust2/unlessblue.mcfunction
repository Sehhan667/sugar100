execute unless block -191 112 -182 obsidian unless block -203 115 -98 obsidian run function zhanqiao:bluewin
#execute unless block -191 112 -182 obsidian unless block -203 115 -98 obsidian if score *c4team c4team matches 0 run function zhanqiao:redwin
execute if block -203 115 -98 obsidian if score *c4team c4team matches 0 run function zhanqiao:bluewin
execute if block -191 112 -182 obsidian if score *c4team c4team matches 0 run function zhanqiao:bluewin