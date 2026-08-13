execute store result score *music music run random value 1..8
execute if score *music music matches 1 run function mms:play/infinity_heaven
execute if score *music music matches 2 run function mms:play/genshin_1
execute if score *music music matches 3 run function mms:play/mochoutown
execute if score *music music matches 4 run function mms:play/lonelysong
execute if score *music music matches 5 run function mms:play/water
execute if score *music music matches 6 run function mms:play/snow
execute if score *music music matches 7 run function mms:play/heroism
execute if score *music music matches 8 run function mms:play/callofsilence
execute if score *music music matches 9 run function mms:play/deco_1
execute if score *music music matches 10 run function mms:play/emotionrecyclebin




scoreboard players set @a MMS_Service 0