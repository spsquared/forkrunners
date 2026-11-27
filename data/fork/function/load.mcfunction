tellraw @a "Fork loaded"

# placing and breaking
execute as @a run clear
execute as @a run gamemode adventure
give @p minecraft:white_wool[minecraft:can_place_on={}]
give @p minecraft:shears[can_break={blocks:["minecraft:white_wool"]}] 1
