execute as @e[tag=weapontp,nbt={interaction:{}}] at @s run tp @p 35 140 13

execute as @e[tag=weapontp,nbt={interaction:{}}] at @s run playsound entity.player.teleport block @a

execute as @e[tag=bridge,nbt={interaction:{}}] at @s run function zhanqiao:start
execute as @e[tag=mlg,nbt={interaction:{}}] at @s run function zhanqiao:mlg_mode/start_mlg
execute as @e[tag=box,nbt={interaction:{}}] at @s run function zhanqiao:battlebox/startbox
execute as @e[tag=flag,nbt={interaction:{}}] at @s run function zhanqiao:flag_mode/startflag
execute as @e[tag=csgo,nbt={interaction:{}}] at @s run function zhanqiao:csgo_mode/startcsgo
execute as @e[tag=hotspot,nbt={interaction:{}}] at @s run function zhanqiao:hotspot_mode/starthotspot
execute as @e[tag=shot,nbt={interaction:{}}] at @s run function zhanqiao:shot_mode/startshot
execute as @e[tag=bed,nbt={interaction:{}}] at @s run function zhanqiao:bed_mode/start_bed
execute as @e[nbt={interaction:{}}] at @s run particle end_rod ~ ~-0.2 ~ 0.2 0 0.2 0.1 20 force









#保持最底下
execute as @e[type=interaction] at @s run data remove entity @s interaction