# keep one wool stack (priority: cursor, offhand, lowest container slot) and refill it
scoreboard players set #wool_found fork_data 0

execute if items entity @s player.cursor #minecraft:wool[custom_data~{fork:true}] run scoreboard players set #wool_found fork_data 1
item modify entity @s player.cursor fork:refill_wool

execute if score #wool_found fork_data matches 1 if items entity @s weapon.offhand #minecraft:wool[custom_data~{fork:true}] run item replace entity @s weapon.offhand with air
execute if items entity @s weapon.offhand #minecraft:wool[custom_data~{fork:true}] run scoreboard players set #wool_found fork_data 1
item modify entity @s weapon.offhand fork:refill_wool

# workaround since container.* isn't allowed in item modify commands
scoreboard players set #wool_slot fork_data 0
function fork:items/wool_slot {i:0}
