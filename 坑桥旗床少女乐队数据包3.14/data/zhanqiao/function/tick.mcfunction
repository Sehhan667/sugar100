execute if score *InGame InGame matches 1 run execute if score *蓝队 score matches 5.. run function zhanqiao:blue_gg
execute if score *InGame InGame matches 1 run execute if score *红色 score matches 5.. run function zhanqiao:red_gg


execute if score *InShotGameWin InShotGameWin matches 1 run execute if score *蓝队 score matches 30.. run function zhanqiao:blue_gg
execute if score *InShotGameWin InShotGameWin matches 1 run execute if score *红色 score matches 30.. run function zhanqiao:red_gg

execute if score *InBoxGame InBoxGame matches 1 run function zhanqiao:battlebox/boxtick

#execute if score *InShotGame InShotGame matches 1 run function zhanqiao:shot_mode/reload_crossbow




execute if score *InGame InGame matches 1 run execute positioned 7 92 -48 as @a[dx=53,dy=-3,dz=118,gamemode=survival] run tellraw @a [{"selector":"@s"},{"text":"被虚空娘捅晕了喵","color": "white"}]
execute if score *InMLGGame InMLGGame matches 1 run execute positioned 7 92 -48 as @a[dx=53,dy=-3,dz=118,gamemode=survival] run tellraw @a [{"selector":"@s"},{"text":"被虚空娘捅晕了喵","color": "white"}]
execute positioned 7 92 -48 as @a[dx=53,dy=-3,dz=118,gamemode=adventure] run tellraw @a [{"selector":"@s"},{"text":"被虚空娘捅晕了喵","color": "white"}]
execute positioned 7 92 -48 as @a[dx=53,dy=-3,dz=118,gamemode=survival] run kill @s
execute positioned 7 92 -48 as @a[dx=53,dy=-3,dz=118,gamemode=adventure] run kill @s

execute if score *InShotGameWin InShotGameWin matches 1 run fill 25 99 56 25 100 56 air
execute if score *InShotGameWin InShotGameWin matches 1 run fill 43 99 -33 43 100 -33 air





#flagtick
execute if score *InFlagGame InFlagGame matches 1 run function zhanqiao:flag_mode/flagtick
#射射射模式专属tick
execute if score *InShotGame InShotGame matches 1 run function zhanqiao:shot_mode/shot_tick
#csgotick
execute if score *InCSGOGame InCSGOGame matches 1 run function zhanqiao:csgo_mode/csgotick
#热点tick
execute if score *InHotSpotGame InHotSpotGame matches 1 run function zhanqiao:hotspot_mode/hotspottick
#
execute if score *InBedGame InBedGame matches 1 run function zhanqiao:bed_mode/beddetect


#口死所有没被标注的物品
execute unless score *InBoxGame InBoxGame matches 1 run kill @e[type=item,tag=!NoClear]


execute unless score *InGame InGame matches 1 run schedule clear zhanqiao:10s
execute unless score *InGame InGame matches 1 run schedule clear zhanqiao:25s





#mlg时给予抗性255
#execute if score *InMLGGame InMLGGame matches 1 run function zhanqiao:mlg_mode/mlg


#喜掉了之后执行（补充物品）
execute as @a[scores={death=1..}] at @s unless score *InBoxGame InBoxGame matches 1 run function zhanqiao:death
execute as @a[scores={death=1..}] at @s if score *InBoxGame InBoxGame matches 1 run function zhanqiao:battlebox/boxdeath
execute if score *InShotGameWin InShotGameWin matches 1 run execute as @a[team=red,scores={death=1..}] at @s run scoreboard players add *蓝队 score 1
execute if score *InShotGameWin InShotGameWin matches 1 run execute as @a[team=blue,scores={death=1..}] at @s run scoreboard players add *红色 score 1
#execute if score *InCSGOGame InCSGOGame matches 1 run clear @a[scores={death=1..}]
execute as @a[scores={death=1..}] at @s run tag @s add death
execute as @a[tag=death,nbt={Health:20f}] run effect give @s minecraft:resistance 3 255 true
execute as @a[tag=death,nbt={Health:20f}] run effect give @s glowing 3 1 true
execute as @a[scores={death=..0}] at @s run tag @s remove death
execute as @a[scores={death=1..}] at @s run scoreboard players set @s death 0

#scoreboard players set @a death 0
#发光效果
execute if score *InGame InGame matches 1 run effect give @a glowing infinite 0 true
execute if score *InMLGGame InMLGGame matches 1 run effect give @a glowing infinite 0 true

#带旗帜缓慢


#262
#滑铲哦耶滑铲
execute as @a as @s if score @s slidetime matches 1.. run effect give @s speed 1 20
execute as @a at @s if score @s slidecd matches 0.. run scoreboard players remove @s slidecd 1
execute as @a at @s if score @s slidetime matches 0.. run scoreboard players remove @s slidetime 1
execute as @a as @s if score @s slidetime matches ..0 run effect clear @s speed

#场外方块限制
fill 19 113 -36 49 121 59 minecraft:air

execute if score *EnableKilledRewards EnableKilledRewards matches 1 run execute as @a[scores={killed=1..}] at @s run function zhanqiao:killed
execute if score *EnableOtherRewards EnableOtherRewards matches 1 run execute as @a[scores={killed=1..}] at @s run function zhanqiao:rewards
execute as @a[scores={killed=1..}] run scoreboard players set @s killed 0

fill 34 110 43 34 111 43 air
fill 34 110 -21 34 111 -21 air

#设置出生点
execute if score *InGame InGame matches 1 run execute as @a[team=blue] at @s run spawnpoint @s 34 110 43
execute if score *InGame InGame matches 1 run execute as @a[team=red] at @s run spawnpoint @s 34 110 -20

execute if score *InMLGGame InMLGGame matches 1 run execute as @a[team=blue] at @s run spawnpoint @s 34 110 43
execute if score *InMLGGame InMLGGame matches 1 run execute as @a[team=red] at @s run spawnpoint @s 34 110 -20



execute if score *InShotGameWin InShotGameWin matches 1 run execute as @a[team=blue] at @s run spawnpoint @s 25 100 56
execute if score *InShotGameWin InShotGameWin matches 1 run execute as @a[team=red] at @s run spawnpoint @s 43 100 -32


#execute if score *allowchangeweapon allowchangeweapon matches 1 run execute if score *shot shot matches 1 run execute if score *InFlagGame InFlagGame matches 1 run execute as @a at @s run spawnpoint @s 35 140 13
execute if score *allowchangeweapon allowchangeweapon matches 1 run execute if score *shot shot matches 1 run execute if score *InShotGameWin InShotGameWin matches 1 run execute as @a at @s run spawnpoint @s 35 140 13



execute unless score *InBoxGame InBoxGame matches 1 run effect give @a saturation 1 0 true


#bossbar

scoreboard players remove *tipstime tipstime 1
execute if score *tipstime tipstime matches ..0 run function zhanqiao:tips
execute if score *tipstime tipstime matches ..0 run scoreboard players set *tipstime tipstime 600

function zhanqiao:buttontick