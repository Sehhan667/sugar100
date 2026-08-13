execute if score *hotspotteamblue hotspotteamblue matches ..199 positioned 431 136 401 unless entity @a[team=red,dx=10,dy=3,dz=14] as @a[team=blue,dx=10,dy=3,dz=14] run scoreboard players add *hotspotteamblue hotspotteamblue 1
execute if score *hotspotteamred hotspotteamred matches 1.. positioned 431 136 401 unless entity @a[team=red,dx=10,dy=3,dz=14] as @a[team=blue,dx=10,dy=3,dz=14] run scoreboard players remove *hotspotteamred hotspotteamred 1

execute if score *hotspotteamred hotspotteamred matches ..199 positioned 431 136 401 unless entity @a[team=blue,dx=10,dy=3,dz=14] as @a[team=red,dx=10,dy=3,dz=14] run scoreboard players add *hotspotteamred hotspotteamred 1
execute if score *hotspotteamblue hotspotteamblue matches 1.. positioned 431 136 401 unless entity @a[team=blue,dx=10,dy=3,dz=14] as @a[team=red,dx=10,dy=3,dz=14] run scoreboard players remove *hotspotteamblue hotspotteamblue 1
