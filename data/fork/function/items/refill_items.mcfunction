# kill dropped items that shouldn't be dropped
execute as @e[type=item] if items entity @s contents *[custom_data~{fork:true}] run kill @s

# somehow we have no wool
execute as @a run tag @s remove has_wool
execute as @a[team=!] if items entity @s container.* #minecraft:wool[custom_data~{fork:true}] run tag @s add has_wool
execute as @a[team=!] if items entity @s weapon.offhand #minecraft:wool[custom_data~{fork:true}] run tag @s add has_wool
execute as @a[team=!] if items entity @s player.cursor #minecraft:wool[custom_data~{fork:true}] run tag @s add has_wool
execute as @a[tag=!has_wool] run function fork:items/give_wool
execute as @a unless items entity @s container.* minecraft:shears[custom_data~{fork:true}] run give @s minecraft:shears[can_break={blocks:"#fork:breakable"},custom_data={fork:true}] 1
function fork:items/check_trident
