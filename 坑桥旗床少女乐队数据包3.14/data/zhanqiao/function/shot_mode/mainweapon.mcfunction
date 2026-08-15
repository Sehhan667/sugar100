execute as @s unless score @s mainweapon matches 0 run clear @s crossbow[custom_data={type:"fennec"}]
execute as @s unless score @s mainweapon matches 1 run clear @s crossbow[custom_data={type:"m700"}]
execute as @s unless score @s mainweapon matches 2 run clear @s carrot_on_a_stick[custom_data={type:"bp50"}]
execute as @s unless score @s mainweapon matches 3 run clear @s crossbow[custom_data={type:"krm262"}]
execute as @s unless score @s mainweapon matches 4 run clear @s mace[custom_data={type:"mace"}]
execute as @s unless score @s mainweapon matches 4 run clear @s wind_charge[custom_data={type:"mace"}]
execute as @s unless score @s mainweapon matches 5 run clear @s crossbow[custom_data={type:"ots9"}]
execute as @s unless score @s mainweapon matches 6 run clear @s crossbow[custom_data={type:"mg42"}]
execute as @s unless score @s mainweapon matches 7 run clear @s crossbow[custom_data={type:"manowar"}]


execute if score @s mainweapon matches 0 run give @s[nbt=!{Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{type:"fennec"}}}]}] minecraft:crossbow[unbreakable={},custom_data={"type":"fennec","gun":"automatic"},minecraft:enchantments={"infinity":5,power:1,piercing:4},lore=[{text:"似乎曾经是崭新出厂..."}],minecraft:charged_projectiles=[{id:"end_rod",count:1}],custom_name=[{"text":"GKS（精致女生自用99新）","color":"yellow"}]]
execute if score @s mainweapon matches 1 run give @s[nbt=!{Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{type:"m700"}}}]}] crossbow[attribute_modifiers=[{operation:"add_value",type:movement_speed,id:move,amount:-0.01}],item_model=egg,custom_data={type:"m700","gun":"bolt_action"},enchantments={"power":46,quick_charge:1,piercing:4},custom_name=[{"text":"ZWP反装装狙击弓","color":"yellow"}]] 1
execute if score @s mainweapon matches 2 run give @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{type:"bp50"}}}]}] minecraft:carrot_on_a_stick[custom_data={type:"bp50",gun:"automatic"},item_model=crossbow,custom_name="BP50",food={nutrition:1,saturation:1,can_always_eat:true},consumable={consume_seconds:0.01}]
execute if score @s mainweapon matches 3 run give @s[nbt=!{Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{type:"krm262"}}}]}] minecraft:crossbow[attribute_modifiers=[{operation:"add_value",type:movement_speed,id:move,amount:0.036}],unbreakable={},custom_data={type:"krm262","gun":"bolt_action"},minecraft:enchantments={quick_charge:4},custom_name=[{"text":"KRM262","color":"aqua"}],item_model=netherite_axe,lore=[{text:"似乎是肘子专用...(持有时可以进行滑铲)"}]]
execute if score @s mainweapon matches 4 run give @s[nbt=!{Inventory:[{id:"minecraft:mace",components:{"minecraft:custom_data":{type:"mace"}}}]}] minecraft:mace[unbreakable={},custom_data={type:"mace"},minecraft:enchantments={wind_burst:1,density:9,breach:4 },custom_name=[{"text":"der服糖包包带带带","color":"aqua"}],lore=[{text:"秒切大学是我的世界最好的大学！"}]]
execute if score @s mainweapon matches 5 run give @s[nbt=!{Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{type:"ots9"}}}]}] minecraft:crossbow[attribute_modifiers=[{operation:"add_value",type:movement_speed,id:move,amount:0.02}],unbreakable={},custom_data={type:"ots9",gun:"automatic"},minecraft:enchantments={"infinity":5,power:2,quick_charge:2},custom_name=[{"text":"Ots-9","color":"aqua"}],lore=[{text:"你说得对但是跑跑跑射射射"}]]
execute if score @s mainweapon matches 6 run give @s[nbt=!{Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{type:"mg42"}}}]}] minecraft:crossbow[attribute_modifiers=[{operation:"add_value",type:movement_speed,id:move,amount:-0.03}],item_model=copper_axe,unbreakable={},custom_data={type:"mg42",gun:"automatic"},minecraft:enchantments={"infinity":5},custom_name=[{"text":"MG42","color":"aqua"}],lore=[{text:"据说有人曾经拿它口死了3000多人..."}]]
execute if score @s mainweapon matches 7 run give @s[nbt=!{Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{type:"manowar"}}}]}] minecraft:crossbow[item_model=blaze_powder,unbreakable={},custom_data={type:"manowar","gun":"bolt_action"},minecraft:enchantments={"infinity":5,quick_charge:4,flame:6,power:4},custom_name=[{"text":"Man O'War","color":"aqua"}],lore=[{text:"点击输入文本的又一力作，自带铝热弹夹"}]]


clear @s wind_charge
execute if score @s mainweapon matches 4 run give @s minecraft:wind_charge 12
