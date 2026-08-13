execute if score *hotspotteamblue hotspotteamblue matches ..199 positioned 538 136 371 unless entity @a[team=red,dx=31,dy=3,dz=8] as @a[team=blue,dx=31,dy=3,dz=8] run scoreboard players add *hotspotteamblue hotspotteamblue 1
execute if score *hotspotteamred hotspotteamred matches 1.. positioned 538 136 371 unless entity @a[team=red,dx=31,dy=3,dz=8] as @a[team=blue,dx=31,dy=3,dz=8] run scoreboard players remove *hotspotteamred hotspotteamred 1

execute if score *hotspotteamred hotspotteamred matches ..199 positioned 538 136 371 unless entity @a[team=blue,dx=31,dy=3,dz=8] as @a[team=red,dx=31,dy=3,dz=8] run scoreboard players add *hotspotteamred hotspotteamred 1
execute if score *hotspotteamblue hotspotteamblue matches 1.. positioned 538 136 371 unless entity @a[team=blue,dx=31,dy=3,dz=8] as @a[team=red,dx=31,dy=3,dz=8] run scoreboard players remove *hotspotteamblue hotspotteamblue 1

