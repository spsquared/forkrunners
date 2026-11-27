# delete wool if a previous run found a stack, otherwise refill the stack
$execute if score #wool_found fork_data matches 1 if items entity @s container.$(i) #minecraft:wool[custom_data~{fork:true}] run item replace entity @s container.$(i) with air
$execute if items entity @s container.$(i) #minecraft:wool[custom_data~{fork:true}] run scoreboard players set #wool_found fork_data 1
$item modify entity @s container.$(i) fork:refill_wool
# recursion go brrr
scoreboard players add #wool_slot fork_data 1
execute store result storage fork:data wool_slot.i int 1 run scoreboard players get #wool_slot fork_data
execute if score #wool_slot fork_data matches ..35 run function fork:items/wool_slot with storage fork:data wool_slot
