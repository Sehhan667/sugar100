#射射射模式专属tick
function zhanqiao:shot_mode/bullet_control
#####execute as @a at @s if entity @s if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={type:"bp50"}] run function zhanqiao:mainweapon/bp50

execute as @a at @s if items entity @s weapon.mainhand bow[custom_data={type:"sonicbow"}] run tag @e[type=arrow,distance=..2,limit=1] add sonic_bullet



execute as @e[tag=sonic_bullet] at @s run damage @p[distance=..6] 9
#execute as @e[tag=krm_bullet,team=red] at @s run damage @a[sort=nearest,limit=1,distance=..1,team=blue] 4
#execute as @a[team=red] at @s if items entity @s weapon.mainhand bow[custom_data={type:"sonicbow"}] run tag @e[type=arrow,distance=2..,limit=1] add sonic_bullet
#execute as @a[team=red] at @s if items entity @s weapon.mainhand bow[custom_data={type:"sonicbow"}] run tag @e[type=arrow,distance=2..,limit=1] add red
#execute as @e[tag=sonic_bullet,tag=red] run damage @p[team=blue] 2
execute as @e[tag=sonic_bullet] at @s run particle sonic_boom ~ ~ ~
execute as @e[tag=sonic_bullet] at @s run playsound entity.warden.sonic_charge player @a
#射击冷却控制
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1

execute as @a at @s if score @s mainweapon matches 3 if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} if score @s slidecd matches ..0 run function zhanqiao:shot_mode/slide


#title @a actionbar {"text":"slide: ","color":"yellow","extra":[{"score":{"name":"@s","objective":"slidecd"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"slidetime"},"color":"white"}]}
clear @a bow[damage=3,custom_data={type:"sonicbow"}]


tag @e[tag=krm_bullet] remove mot

execute as @a at @s if score @s mainweapon matches 3 if score @s slidecd matches 0 run tellraw @s {text:"滑铲充能完成！",color:"green"}
execute as @a at @s if score @s mainweapon matches 3 if score @s slidecd matches 0 run playsound block.shelf.place_item player @s




#execute as @a at @s run function zhanqiao:shot_mode/movement

#effect give @a resistance 1 1 true


function zhanqiao:shot_mode/prop/proptick
execute as @a at @s run effect give @s resistance 1 2 true

#execute as @e[type=lingering_potion] at @s run attribute @s minecraft:jump_strength base set 999
execute if score *map map matches 5 positioned 271 190 788 run kill @a[dx=230,dy=3,dz=120]

#execute as @a if data entity @s {fire:{}} run say 111

#execute as @a at @s run attribute @s armor base set 20
