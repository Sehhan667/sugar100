scoreboard players set *ifoldpvp ifoldpvp 0
#execute if score *ifoldpvp ifoldpvp matches 1 run tellraw @a {"text":"已切换到低版本PVP模式！","color":"green"}
execute if score *ifoldpvp ifoldpvp matches 0 run tellraw @a {"text":"已切换到高版本PVP模式！","color":"green"}
playsound block.enchantment_table.use ui @a