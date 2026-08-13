execute if score *hotspotteamblue hotspotteamblue matches ..199 positioned 570 136 402 unless entity @a[team=red,dx=21,dy=3,dz=9] as @a[team=blue,dx=21,dy=3,dz=9] run scoreboard players add *hotspotteamblue hotspotteamblue 1
execute if score *hotspotteamred hotspotteamred matches 1.. positioned 570 136 402 unless entity @a[team=red,dx=21,dy=3,dz=9] as @a[team=blue,dx=21,dy=3,dz=9] run scoreboard players remove *hotspotteamred hotspotteamred 1

execute if score *hotspotteamred hotspotteamred matches ..199 positioned 570 136 402 unless entity @a[team=blue,dx=21,dy=3,dz=9] as @a[team=red,dx=21,dy=3,dz=9] run scoreboard players add *hotspotteamred hotspotteamred 1
execute if score *hotspotteamblue hotspotteamblue matches 1.. positioned 570 136 402 unless entity @a[team=blue,dx=21,dy=3,dz=9] as @a[team=red,dx=21,dy=3,dz=9] run scoreboard players remove *hotspotteamblue hotspotteamblue 1
