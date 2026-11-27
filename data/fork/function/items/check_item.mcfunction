execute as @a run tag @s remove has_item
$execute as @a[team=!] if items entity @s container.* $(item)[custom_data~{fork:true}] run tag @s add has_item
$execute as @a[team=!] if items entity @s armor.* $(item)[custom_data~{fork:true}] run tag @s add has_item
$execute as @a[team=!] if items entity @s weapon.offhand $(item)[custom_data~{fork:true}] run tag @s add has_item
$execute as @a[team=!] if items entity @s player.cursor $(item)[custom_data~{fork:true}] run tag @s add has_item
$execute as @a[tag=!has_item] run $(cb)