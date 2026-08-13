#烟雾弹
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:114}}] at @s run summon block_display ~-2.5 ~ ~-2.5 {Tags:["smoke_cloud"],block_state:{Name:"minecraft:barrier"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6.0f,6.0f,6.0f]}}
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:114}}] run kill @s
execute as @e[type=block_display,tag=smoke_cloud] at @s run particle minecraft:campfire_cosy_smoke ~2.5 ~ ~2.5 1 1 1 0.02 300 force
execute as @e[type=block_display,tag=smoke_cloud] at @s run scoreboard players add @s smokeage 1
execute as @e[type=block_display,tag=smoke_cloud,scores={smokeage=200..}] at @s run kill @s


#fla5hbang
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:514}}] at @s run effect give @a[distance=..6] blindness 3 1 true
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:514}}] at @s run kill @s

#摔炮
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:1}}] at @s run execute as @a[distance=..4] at @s run function zhanqiao:shot_mode/prop/gernade
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:1}}] at @s run particle explosion ~ ~ ~ 1 1 1 0.1 3 normal
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:1}}] at @s run playsound entity.generic.explode block @a

execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:1}}] at @s run kill @s

#摔炮
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:16361777}}] at @s run execute as @a[distance=..2.5] at @s run function zhanqiao:shot_mode/prop/fire
#execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:16361777}}] at @s run particle soul_fire_flame ~ ~ ~ ~ ~ ~ 1 40 force
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:16361777}},tag=!fired] at @s run data merge entity @s {RadiusPerTick:0,RadiusOnUse:0,Duration:120}
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:16361777}}] at @s run tag @s add fired
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:16361777}}] at @s run execute as @s at @s run particle trial_spawner_detection ~ ~ ~ 2 0 2 0 20 force



#execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:16361777}}] at @s as @a[distance=..4] run function zhanqiao:shot_mode/prop/fire

#data modify entity @a[limit=1] Fire set value true