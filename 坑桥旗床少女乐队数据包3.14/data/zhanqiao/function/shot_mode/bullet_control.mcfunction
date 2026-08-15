
execute as @a at @s if score @s mag matches ..0 if items entity @s weapon.* crossbow[custom_data~{gun:"automatic"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag
execute as @a at @s if score @s mag < @s fullmag if items entity @s weapon.offhand crossbow[custom_data~{gun:"automatic"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag

execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.offhand crossbow[custom_data~{gun:"automatic"}] run item modify entity @s weapon.offhand zhanqiao:unload_crossbow




#它在tick函数中被调用
execute as @e[type=arrow] at @s if entity @s[nbt={inGround:1b}] run kill @s
#item replace entity @a hotbar.0 with minecraft:crossbow[custom_data={type:"fennec"},minecraft:enchantments={"infinity":5},minecraft:charged_projectiles=[{id:"end_rod",count:1}],custom_name=[{"text":"地下水（崭新出厂）","color":"yellow"}]]
execute as @e[type=arrow,tag=!krm_bullet] at @s run data merge entity @s {NoGravity:1b}
#太猎奇了暂时不用
#execute as @e[type=snowball] at @s run damage @p[distance=..0.3] 2 player_attack
execute if score *InShotGameWin InShotGameWin matches 1 run kill @e[type=zombie]
#自动上弦
execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.mainhand crossbow[custom_data~{gun:"automatic"}] run function zhanqiao:shot_mode/reload_cooldown

execute as @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}] run function zhanqiao:shot_mode/item_drop
execute as @e[type=item,nbt={Item:{id:"minecraft:bow"}}] run function zhanqiao:shot_mode/item_drop


execute as @a if items entity @s weapon.* crossbow[custom_data~{gun:"automatic"}] run title @s actionbar {"text":"弹药: ","color":"yellow","extra":[{"score":{"name":"@s","objective":"ammo"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"mag"},"color":"white"}]}
execute as @a if items entity @s weapon.* crossbow[custom_data~{gun:"bolt_action"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run title @s actionbar {"text":"已装填","color":"green"}
execute as @a if items entity @s weapon.* crossbow[custom_data~{gun:"bolt_action"},charged_projectiles=[]] run title @s actionbar {"text":"未装填","color":"red"}









scoreboard players remove @a[scores={timer=1..}] timer 1
execute as @a[scores={timer=0},team=red] run tp @s 43 100 -33
execute as @a[scores={timer=0},team=blue] run tp @s 25 100 56
scoreboard players set @a[scores={timer=0}] timer -1





