execute as @s unless score @s offweapon matches 0 run clear @s iron_sword
execute as @s unless score @s offweapon matches 1 run clear @s crossbow[custom_data={type:"minigun"}]
execute as @s unless score @s offweapon matches 2 run clear @s iron_spear
execute as @s unless score @s offweapon matches 3 run clear @s bow[custom_data={type:"sonicbow"}]
execute as @s unless score @s offweapon matches 4 run clear @s bow[custom_data={type:"rocketbow"}]
execute as @s unless score @s offweapon matches 4 run clear @s firework_rocket
execute as @s unless score @s offweapon matches 5 run clear @s iron_pickaxe[custom_data={type:"iron_pickaxe"}]
execute as @s unless score @s offweapon matches 6 run clear @s stone_axe
#副武器给与
execute if score @s offweapon matches 0 run give @s[nbt=!{Inventory:[{id:"minecraft:iron_sword"}]}] iron_sword[attribute_modifiers=[{operation:"add_value",type:movement_speed,id:move,amount:0.03}],attack_range={max_reach:3},custom_data={speed:"true"},unbreakable={},enchantments={"sharpness":99},use_cooldown={seconds:100},damage=249,custom_name=[{"text":"装装的菜刀","color":"yellow"}]] 1
execute if score @s offweapon matches 1 run give @s[nbt=!{Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{type:"minigun"}}}]}] crossbow[enchantments={power:1,quick_charge:3},custom_data={"type":"minigun"},custom_name={text:"小手弩"}]
execute if score @s offweapon matches 2 run give @s[nbt=!{Inventory:[{id:"minecraft:iron_spear"}]}] iron_spear[can_break={blocks:obsidian},enchantments={lunge:2,sharpness:49},unbreakable={}]
execute if score @s offweapon matches 3 run give @s[nbt=!{Inventory:[{id:"minecraft:bow",components:{"minecraft:custom_data":{type:"sonicbow"}}}]}] bow[enchantments={infinity:1,power:22},max_damage=4,custom_name="回响水晶",item_model=echo_shard,custom_data={type:"sonicbow"},lore=[{text:"具有非常强大的力量，但是只能射两发..."}]]
execute if score @s offweapon matches 4 run give @s[nbt=!{Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{type:"rocketbow"}}}]}] crossbow[enchantments={power:255},max_damage=2,custom_name="爆炸弩",custom_data={type:"rocketbow"},lore=[{text:"只能射两发"}]]
execute if score @s offweapon matches 4 run give @s[nbt=!{Inventory:[{id:"minecraft:firework_rocket"}]}] firework_rocket[firework_explosion={colors:[12801229,14188952,6719955,2651799,4312372,14602026,15435844,11250603],shape:"large_ball"}] 2
execute if score @s offweapon matches 5 run give @s[nbt=!{Inventory:[{id:"minecraft:iron_pickaxe",components:{"minecraft:custom_data":{type:"iron_pickaxe"}}}]}] iron_pickaxe[enchantments={efficiency:4},unbreakable={},custom_data={type:"iron_pickaxe"},custom_name="拆弹器",lore=[{text:"沃趣原本要花钱买的给你免费用了这还得了"}],can_break={blocks:obsidian}] 1
execute if score @s offweapon matches 6 run give @s[nbt=!{Inventory:[{id:"minecraft:stone_axe"}]}] stone_axe[enchantments={sharpness:128},unbreakable={},custom_name="消防斧"] 1
