function zhanqiao:resetgamescore
function zhanqiao:reset
function zhanqiao:gunmu_gg

function zhanqiao:scoredisplay

gamerule keep_inventory true
gamerule fire_spread_radius_around_player 0
gamerule mob_griefing false
gamerule natural_health_regeneration false
gamerule spawn_mobs false
gamerule locator_bar false

gamerule advance_time false
gamerule advance_weather false
gamerule command_block_output false
gamerule fall_damage false
defaultgamemode adventure
difficulty hard

scoreboard objectives add timeCD dummy
scoreboard objectives add score dummy "分数"
scoreboard objectives setdisplay sidebar score



team add blue
team modify blue color blue
team modify blue collisionRule pushOwnTeam
team add red
team modify red color red
team modify red collisionRule pushOwnTeam

scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list health

team modify blue friendlyFire false
team modify red friendlyFire false

scoreboard objectives add blockCount dummy
scoreboard objectives add golden_apple dummy
team join blue *蓝队
team join red *红队

#创建游戏模式计分板
scoreboard objectives add InGame dummy
scoreboard objectives add InMLGGame dummy
scoreboard objectives add InFlagGame dummy
scoreboard objectives add InShotGame dummy
scoreboard objectives add InShotGameWin dummy
scoreboard objectives add InCSGOGame dummy
scoreboard objectives add InHotSpotGame dummy
scoreboard objectives add InBoxGame dummy
scoreboard objectives add InBedGame dummy
#通用计分板：任意游戏进行中=1
scoreboard objectives add anygame dummy

scoreboard objectives add death deathCount
scoreboard objectives add killed playerKillCount
scoreboard objectives add EnableKilledRewards dummy "击杀奖励开关"
scoreboard objectives add EnableOtherRewards dummy "其他奖励开关"

scoreboard objectives add ifoldpvp dummy "是否开启了旧版PVP机制"
scoreboard objectives add debug dummy "调试用"
scoreboard objectives add shot dummy "全局射射射"
scoreboard objectives add ammo dummy "备弹"
scoreboard objectives add mag dummy "弹夹"
scoreboard objectives add fullmag dummy "满弹夹"
scoreboard objectives add mainweapon dummy "主武器"
scoreboard objectives add offweapon dummy "副武器"
scoreboard objectives add prop dummy "道具"
scoreboard objectives add allowchangeweapon dummy "允许游戏内更改武器"

#主武器0=地下水，1=反装装狙击弓
#副武器0=菜刀
#计算子弹用
scoreboard objectives add temp dummy

#scoreboard players display name *蓝队 score
#scoreboard objectives setdisplay sidebar score

#夺旗模式计分板
scoreboard objectives add pickedblueFlag dummy
scoreboard objectives add pickedredFlag dummy
#scoreboard objectives add kill_armor_stand killed:armor_stand
scoreboard objectives add deathCount deathCount

scoreboard objectives add timer dummy "复活倒计时（选武器用）"
scoreboard objectives add cooldown dummy "射击冷却"
scoreboard objectives add smokeage dummy

#csgo
scoreboard objectives add c4team dummy
scoreboard objectives add c4position dummy
scoreboard objectives add randomc4 dummy
scoreboard objectives add slidecd dummy
scoreboard objectives add slidetime dummy
scoreboard objectives add fadetime dummy
scoreboard objectives add lefttime dummy
#hotspot
scoreboard objectives add hotspotposition dummy
scoreboard objectives add hotspotteamblue dummy
scoreboard objectives add hotspotteamred dummy
scoreboard objectives add hotspotaddblue dummy
scoreboard objectives add hotspotaddred dummy
scoreboard objectives add hotspotswitchtime dummy
scoreboard objectives add hotspotspawnposition dummy
scoreboard objectives add map dummy
#scoreboard objectives add hotspotspawntime dummy
scoreboard objectives add buildinspot dummy


#defult.options
execute if score *first_open first_open matches 0 run scoreboard players set *ifoldpvp ifoldpvp 0
execute if score *first_open first_open matches 0 run scoreboard players set *allowchangeweapon allowchangeweapon 0
execute if score *first_open first_open matches 0 run scoreboard players set *debug debug 0
execute if score *first_open first_open matches 0 run scoreboard players set *shot shot 0
execute if score *first_open first_open matches 0 run scoreboard players set *EnableKilledRewards EnableKilledRewards 0
execute if score *first_open first_open matches 0 run scoreboard players set *EnableOtherRewards EnableOtherRewards 1
scoreboard objectives add first_open dummy
scoreboard players set *first_open first_open 1

#motion
scoreboard objectives add tips dummy
scoreboard objectives add tipstime dummy
#data modify block -19 109 11 front_text.messages[0] set value {"text":"1","click_event":{"action":"open_url","url":"www.baidu.com"}}
scoreboard objectives add wool dummy


#----------csgo倒计时----------#
scoreboard objectives add maxc4time dummy
scoreboard objectives add maxlefttime dummy
scoreboard objectives add maxc4timeset dummy
scoreboard objectives add maxlefttimeset dummy