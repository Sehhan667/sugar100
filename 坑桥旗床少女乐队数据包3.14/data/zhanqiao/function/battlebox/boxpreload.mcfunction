forceload remove all
gamemode spectator @a
forceload add 545 176 644 77
title @a title "正在预加载地图..."
title @a subtitle "请稍后，为了等会服务器不会飞起来，这是必须的"
schedule function zhanqiao:battlebox/boxreset 3s
schedule function zhanqiao:battlebox/boxgo 6s