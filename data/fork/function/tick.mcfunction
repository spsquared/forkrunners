execute as @a if items entity @s container.* #minecraft:wool[!minecraft:can_place_on] run function fork:apply_wool

function fork:items/refill_items