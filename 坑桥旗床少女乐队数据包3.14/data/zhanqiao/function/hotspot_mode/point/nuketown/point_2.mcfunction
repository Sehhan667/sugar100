execute if score *hotspotteamblue hotspotteamblue matches ..199 positioned 520 136 390 unless entity @a[team=red,dx=15,dy=3,dz=10] as @a[team=blue,dx=15,dy=3,dz=10] run scoreboard players add *hotspotteamblue hotspotteamblue 1
execute if score *hotspotteamred hotspotteamred matches 1.. positioned 520 136 390 unless entity @a[team=red,dx=15,dy=3,dz=10] as @a[team=blue,dx=15,dy=3,dz=10] run scoreboard players remove *hotspotteamred hotspotteamred 1

execute if score *hotspotteamred hotspotteamred matches ..199 positioned 520 136 390 unless entity @a[team=blue,dx=15,dy=3,dz=10] as @a[team=red,dx=15,dy=3,dz=10] run scoreboard players add *hotspotteamred hotspotteamred 1
execute if score *hotspotteamblue hotspotteamblue matches 1.. positioned 520 136 390 unless entity @a[team=blue,dx=15,dy=3,dz=10] as @a[team=red,dx=15,dy=3,dz=10] run scoreboard players remove *hotspotteamblue hotspotteamblue 1
