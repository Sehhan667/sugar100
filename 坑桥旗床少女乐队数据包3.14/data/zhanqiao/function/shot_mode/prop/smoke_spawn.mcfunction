# 1. 召唤方块展示实体 (Block Display)
# 我们使用灰色羊毛作为烟雾材质，并将其放大。
# transformation: [左, 上, 前, 右] 的缩放比例。这里设置为 6x6x6 (3.0d 是半径)。
summon block_display ~-2.5 ~ ~-2.5 {Tags:["smoke_cloud"],block_state:{Name:"minecraft:gray_wool"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6.0f,6.0f,6.0f]}}
#summon block_display ~2 ~0.1 ~ {Tags:["smoke_cloud"],block_state:{Name:"minecraft:gray_wool"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6.0f,6.0f,6.0f]}}
#summon block_display ~1 ~0.1 ~ {Tags:["smoke_cloud"],block_state:{Name:"minecraft:gray_wool"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6.0f,6.0f,6.0f]}}
#summon block_display ~ ~0.1 ~1 {Tags:["smoke_cloud"],block_state:{Name:"minecraft:gray_wool"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6.0f,6.0f,6.0f]}}
#summon block_display ~ ~0.1 ~2 {Tags:["smoke_cloud"],block_state:{Name:"minecraft:gray_wool"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6.0f,6.0f,6.0f]}}

tellraw @a "111"


#kill @s
# 2. 召唤粒子效果 (加强视觉，防止方块展示实体太死板)
# 生成一大团灰色羊毛粒子


# 3. 播放声音 (烟雾喷射声)
#playsound minecraft:entity.generic.extinguish master @a ~ ~ ~ 1 0.5
