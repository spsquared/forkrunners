tag @s add wolf_tamer
execute at @s as @e[type=minecraft:wolf,distance=..8] unless data entity @s Owner run data modify entity @s Owner set from entity @a[tag=wolf_tamer,limit=1] UUID
tag @s remove wolf_tamer
scoreboard players set @s used_wolf_egg 0