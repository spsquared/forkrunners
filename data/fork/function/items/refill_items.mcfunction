# kill dropped items that shouldn't be dropped
execute as @e[type=item] if items entity @s contents *[custom_data~{fork:true}] run kill @s

# slightly fragile
function fork:items/check_item {item:"#minecraft:wool",cb:"function fork:items/give_wool"}
function fork:items/check_item {item:"minecraft:shears",cb:"function fork:items/give_shears"}
function fork:items/check_trident
