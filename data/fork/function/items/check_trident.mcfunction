tag @a remove has_trident

execute as @a if items entity @s container.* minecraft:trident[enchantments~[{enchantments:"minecraft:loyalty"}]] run tag @s add has_trident
execute as @a if items entity @s weapon.offhand minecraft:trident[enchantments~[{enchantments:"minecraft:loyalty"}]] run tag @s add has_trident
execute as @a if items entity @s player.cursor minecraft:trident[enchantments~[{enchantments:"minecraft:loyalty"}]] run tag @s add has_trident

execute as @e[type=minecraft:trident] if items entity @s contents minecraft:trident[enchantments~[{enchantments:"minecraft:loyalty"}]] on origin run tag @s add has_trident

give @a[tag=!has_trident] minecraft:trident[enchantments={"minecraft:loyalty":3},custom_data={fork:true}] 1