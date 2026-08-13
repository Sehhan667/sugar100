gamemode survival @a
spawnpoint @a[team=blue] 551 146 170
tp @a[team=blue] 551 146 170
spawnpoint @a[team=red] 638 143 83
tp @a[team=red] 638 143 83
setblock 548 117 79 redstone_block
setblock 596 117 79 redstone_block
setblock 596 117 127 redstone_block
setblock 548 117 127 redstone_block
kill @e[type=item]
title @a title "在教堂顶端的祭坛里放置羊毛来得分"
title @a subtitle "10分胜利"
tellraw @a "所有人获得两分钟无敌时间！"
effect give @a resistance 120 255 true