# somehow we have no wool
execute unless items entity @s container.* #minecraft:wool[custom_data~{fork_wool:true}] run function fork:items/give_wool