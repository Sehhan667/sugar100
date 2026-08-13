execute positioned 34 106 11 run kill @e[sort= nearest,limit=1,type=item,distance=..0.25,nbt={Item:{id:"minecraft:netherite_spear"}}]
summon item 34 106 11 {Item:{id:"netherite_spear",components:{"enchantments":{"lunge":2},"max_damage":2}},Tags:["NoClear","whiteglow"]}
title @a actionbar {"text":"突进长矛已刷新",color: "red"}
schedule function zhanqiao:25s 25s replace