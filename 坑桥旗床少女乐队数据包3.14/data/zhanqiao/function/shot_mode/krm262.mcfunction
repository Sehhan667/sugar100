#tellraw @a "11111"
tag @e[type=arrow,limit=3,sort=nearest] add krm_bullet
summon arrow ^0.74 ^0.9 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
summon arrow ^-0.74 ^0.9 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
summon arrow ^ ^0.9 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
summon arrow ^ ^1.34 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
summon arrow ^ ^0.34 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
#为刚生成的箭矢设置发射者owner（复制射击者UUID），保证击杀归属正确
tag @s add krm_owner
execute as @e[type=arrow,tag=krm_bullet,distance=..3] run data modify entity @s Owner set from entity @e[tag=krm_owner,limit=1] UUID
tag @s remove krm_owner
#advancement revoke @s only krm262

data modify entity @s damage set value 1