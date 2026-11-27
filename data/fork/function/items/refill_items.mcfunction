# kill dropped items that shouldn't be dropped
execute as @e[type=item] if items entity @s contents *[custom_data~{fork:true}] run kill @s

# somehow we have no wool
execute unless items entity @s container.* #minecraft:wool[custom_data~{fork:true}] run function fork:items/give_wool
execute unless items entity @s container.* minecraft:shears[custom_data~{fork:true}] run give @p minecraft:shears[can_break={blocks:"#minecraft:wool"}] 1