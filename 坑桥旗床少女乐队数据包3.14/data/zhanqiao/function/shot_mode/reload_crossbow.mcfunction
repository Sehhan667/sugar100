#execute as @s if items entity @s hotbar.* crossbow[custom_data={type:"fennec"}] run item modify entity @s weapon.mainhand zhanqiao:reload_crossbow
#execute as @s if items entity @s hotbar.* crossbow[custom_data={type:"ots9"}] run item modify entity @s weapon.mainhand zhanqiao:reload_crossbow
#execute as @s if items entity @s hotbar.* crossbow[custom_data={type:"mg42"}] run item modify entity @s weapon.mainhand zhanqiao:reload_crossbow
execute as @s if items entity @s hotbar.* crossbow[custom_data~{gun:"automatic"}] run item modify entity @s weapon.mainhand zhanqiao:reload_crossbow

#execute as @s if items entity @s hotbar.* crossbow[custom_data={type:"krm262"}] run item modify entity @s weapon.mainhand zhanqiao:reload_krm262
#schedule function zhanqiao:shot_mode/reload_crossbow 1s replace
execute if score @s mainweapon matches 0 run scoreboard players set @s cooldown 4
execute if score @s mainweapon matches 5 run scoreboard players set @s cooldown 4
execute if score @s mainweapon matches 6 run scoreboard players set @s cooldown 2

#execute if score @s mainweapon matches 3 run scoreboard players set @s cooldown 20
#byd装装这就是你要的物品修饰器
#因为一次只能选一个格子所以只能遍历
#效率飞起来
#execute if items entity @a weapon.mainhand crossbow[custom_data={type:"fennec"}] run scoreboard players remove @s mag 1
