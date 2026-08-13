#tellraw @a "11111"
tag @e[type=arrow,limit=3,sort=nearest] add krm_bullet
summon arrow ^0.74 ^0.9 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
summon arrow ^-0.74 ^0.9 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
summon arrow ^ ^0.9 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
summon arrow ^ ^1.34 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
summon arrow ^ ^0.34 ^0.8 {Tags:["krm_bullet","mot"],damage:5}
#advancement revoke @s only krm262

data modify entity @s damage set value 1