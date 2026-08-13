#debug
execute if score *debug debug matches 1 run tellraw @a "blue_flag_display.mcfunction executed"
# 在旗帜僵尸位置生成蓝色旗帜方块展示实体，作为隐形僵尸的视觉替代
# but=旋转 aquaglow=青色发光（buttonapi每tick自动驱动）
# translation偏移以抵消骑乘点高度，让旗帜位于僵尸身体处（同c4方案：[-0.5,-0.5,-0.5]，再往下1格）
summon block_display ~ ~0.5 ~ {Tags:["blueflag_display","but","aquaglow"],block_state:{Name:"minecraft:blue_banner"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.5f,-0.5f],scale:[1.0f,1.0f,1.0f]},teleport_duration:1}
# 让展示实体骑乘在僵尸上，随僵尸移动/传送
ride @e[type=block_display,tag=blueflag_display,limit=1,sort=nearest] mount @s
