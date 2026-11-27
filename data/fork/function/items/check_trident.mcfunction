tag @a[team=!] add has_trident
function fork:items/check_item {item:"minecraft:trident",cb:"tag @s remove has_trident"}
# also check if the trident exists in thrown form
execute as @e[type=minecraft:trident] if items entity @s contents minecraft:trident[custom_data~{fork:true}] on origin run tag @s add has_trident

give @a[team=!,tag=!has_trident] minecraft:trident[enchantments={"minecraft:loyalty":10,"minecraft:impaling":5},unbreakable={},custom_data={fork:true}] 1

# don't leave tags hanging around
tag @a remove has_trident