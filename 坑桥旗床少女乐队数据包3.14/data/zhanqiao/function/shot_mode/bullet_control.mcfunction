
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
#execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.mainhand crossbow[custom_data={type:"fennec"}] run function zhanqiao:shot_mode/reload_cooldown
#execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.mainhand crossbow[custom_data={type:"ots9"}] run function zhanqiao:shot_mode/reload_cooldown
#execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.mainhand crossbow[custom_data={type:"mg42"}] run function zhanqiao:shot_mode/reload_cooldown
execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.mainhand crossbow[custom_data~{gun:"automatic"}] run function zhanqiao:shot_mode/reload_cooldown

#execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.offhand crossbow[custom_data={type:"fennec"}] run item modify entity @s weapon.offhand zhanqiao:unload_crossbow
#execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.offhand crossbow[custom_data={type:"ots9"}] run item modify entity @s weapon.offhand zhanqiao:unload_crossbow
#execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.offhand crossbow[custom_data={type:"mg42"}] run item modify entity @s weapon.offhand zhanqiao:unload_crossbow





#execute as @a at @s if score @s mag matches ..0 if items entity @s weapon.* crossbow[custom_data~{gun:"automatic"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag
#execute as @a at @s if score @s mag < @s fullmag if items entity @s weapon.offhand crossbow[custom_data~{gun:"automatic"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag

 



#execute as @a run execute as @s if score @s mag matches 1.. run execute if items entity @s weapon.mainhand crossbow[custom_data={type:"krm262"}] run function zhanqiao:shot_mode/reload_cooldown

#execute as @a at @s if score @s mainweapon matches 0 if score @s mag matches ..0 run execute if items entity @s weapon.* crossbow[custom_data={type:"fennec"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag
#execute as @a at @s if score @s mainweapon matches 0 if score @s mag matches ..29 run execute if items entity @s weapon.offhand crossbow[custom_data={type:"fennec"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag
#execute as @a at @s if score @s mainweapon matches 5 if score @s mag matches ..0 run execute if items entity @s weapon.* crossbow[custom_data={type:"ots9"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag
#execute as @a at @s if score @s mainweapon matches 5 if score @s mag matches ..12 run execute if items entity @s weapon.offhand crossbow[custom_data={type:"ots9"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag
#execute as @a at @s if score @s mainweapon matches 6 if score @s mag matches ..0 run execute if items entity @s weapon.* crossbow[custom_data={type:"mg42"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag
#execute as @a at @s if score @s mainweapon matches 6 if score @s mag matches ..60 run execute if items entity @s weapon.offhand crossbow[custom_data={type:"mg42"},charged_projectiles=[{id:arrow,count:1,components:{"intangible_projectile":{}}}]] run function zhanqiao:shot_mode/refill_mag


#execute as @a run execute as @s if items entity @s weapon.mainhand crossbow[charged_projectiles] run playsound block.amethyst_block.place master @s
execute as @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}] run function zhanqiao:shot_mode/item_drop
execute as @e[type=item,nbt={Item:{id:"minecraft:bow"}}] run function zhanqiao:shot_mode/item_drop
#execute as @a if items entity @s weapon.* crossbow[custom_data={type:"fennec"}] run title @s actionbar {"text":"弹药: ","color":"yellow","extra":[{"score":{"name":"@s","objective":"ammo"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"mag"},"color":"white"}]}
#execute as @a if items entity @s weapon.* crossbow[custom_data={type:"ots9"}] run title @s actionbar {"text":"弹药: ","color":"yellow","extra":[{"score":{"name":"@s","objective":"ammo"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"mag"},"color":"white"}]}
#execute as @a if items entity @s weapon.* crossbow[custom_data={type:"mg42"}] run title @s actionbar {"text":"弹药: ","color":"yellow","extra":[{"score":{"name":"@s","objective":"ammo"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"mag"},"color":"white"}]}
execute as @a if items entity @s weapon.* crossbow[custom_data~{gun:"automatic"}] run title @s actionbar {"text":"弹药: ","color":"yellow","extra":[{"score":{"name":"@s","objective":"ammo"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"mag"},"color":"white"}]}


#execute as @a if items entity @s weapon.mainhand crossbow[custom_data={type:"ots9"}] run effect give @s minecraft:speed 1 2 true
#execute as @a if items entity @s weapon.mainhand crossbow[custom_data={type:"mg42"}] run effect give @s slowness 1 3 true







scoreboard players remove @a[scores={timer=1..}] timer 1
execute as @a[scores={timer=0},team=red] run tp @s 43 100 -33
execute as @a[scores={timer=0},team=blue] run tp @s 25 100 56
scoreboard players set @a[scores={timer=0}] timer -1



#execute as @a if items entity @s weapon.offhand crossbow[custom_data={type:"fennec"}] run item replace entity @s weapon.offhand with minecraft:crossbow[unbreakable={},custom_data={type:"fennec"},minecraft:enchantments={"infinity":5,power:1,piercing:4},lore=[{text:"似乎曾经是崭新出厂..."}],minecraft:charged_projectiles=[{id:"end_rod",count:1}],custom_name=[{"text":"GKS（精致女生自用99新）","color":"yellow"}]]
#execute as @a if items entity @s weapon.offhand crossbow[custom_data={type:"ots9"}] run item replace entity @s weapon.offhand with minecraft:crossbow[attribute_modifiers=[{operation:"add_value",type:movement_speed,id:move,amount:0.02}],unbreakable={},custom_data={type:"ots9"},minecraft:enchantments={"infinity":5,power:2,quick_charge:2},custom_name=[{"text":"Ots-9","color":"aqua"}],lore=[{text:"你说得对但是跑跑跑射射射"}]]
#execute as @a if items entity @s weapon.offhand crossbow[custom_data={type:"mg42"}] run item replace entity @s weapon.offhand with minecraft:crossbow[attribute_modifiers=[{operation:"add_value",type:movement_speed,id:move,amount:-0.03}],item_model=copper_axe,unbreakable={},custom_data={type:"mg42"},minecraft:enchantments={"infinity":5},custom_name=[{"text":"MG42","color":"aqua"}],lore=[{text:"据说有人曾经拿它口死了3000多人..."}]]


