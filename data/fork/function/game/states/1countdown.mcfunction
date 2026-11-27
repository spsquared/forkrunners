# countdown

# allow players to organize inventory
function fork:items/refill_items

# count up
scoreboard players add #countdown fork_data 1

execute if score #countdown fork_data matches 50 run tellraw @a [{"color":"gold","text":"  Scatter!"}]
execute if score #countdown fork_data matches 100 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"dark_red","text":"10"}]
execute if score #countdown fork_data matches 100 run title @a[team=!] actionbar {"color":"dark_red","text":"10"}
execute if score #countdown fork_data matches 100 as @a at @s run playsound block.note_block.cow_bell record @s ~ ~ ~ 0.15 1
execute if score #countdown fork_data matches 120 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"dark_red","text":"9"}]
execute if score #countdown fork_data matches 120 run title @a[team=!] actionbar {"color":"dark_red","text":"9"}
execute if score #countdown fork_data matches 120 as @a at @s run playsound block.note_block.cow_bell record @s ~ ~ ~ 0.15 1
execute if score #countdown fork_data matches 140 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"dark_red","text":"8"}]
execute if score #countdown fork_data matches 140 run title @a[team=!] actionbar {"color":"dark_red","text":"8"}
execute if score #countdown fork_data matches 140 as @a at @s run playsound block.note_block.cow_bell record @s ~ ~ ~ 0.15 1
execute if score #countdown fork_data matches 160 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"dark_red","text":"7"}]
execute if score #countdown fork_data matches 160 run title @a[team=!] actionbar {"color":"dark_red","text":"7"}
execute if score #countdown fork_data matches 160 as @a at @s run playsound block.note_block.cow_bell record @s ~ ~ ~ 0.15 1
execute if score #countdown fork_data matches 180 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"dark_red","text":"6"}]
execute if score #countdown fork_data matches 180 run title @a[team=!] actionbar {"color":"dark_red","text":"6"}
execute if score #countdown fork_data matches 180 as @a at @s run playsound block.note_block.cow_bell record @s ~ ~ ~ 0.15 1
execute if score #countdown fork_data matches 200 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"red","text":"5"}]
execute if score #countdown fork_data matches 200 run title @a[team=!] actionbar {"color":"red","text":"5"}
execute if score #countdown fork_data matches 200 as @a at @s run playsound block.note_block.cow_bell record @s ~ ~ ~ 0.15 1
execute if score #countdown fork_data matches 220 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"red","text":"4"}]
execute if score #countdown fork_data matches 220 run title @a[team=!] actionbar {"color":"red","text":"4"}
execute if score #countdown fork_data matches 220 as @a at @s run playsound block.note_block.cow_bell record @s ~ ~ ~ 0.15 1
execute if score #countdown fork_data matches 240 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"yellow","text":"3"}]
execute if score #countdown fork_data matches 240 run title @a[team=!] title {"color":"yellow","shadow_color":-22016,"text":"3"}
execute if score #countdown fork_data matches 240 as @a at @s run playsound block.note_block.bit record @s ~ ~ ~ 2 0.5
execute if score #countdown fork_data matches 260 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"yellow","text":"2"}]
execute if score #countdown fork_data matches 260 run title @a[team=!] title {"color":"yellow","shadow_color":-22016,"text":"2"}
execute if score #countdown fork_data matches 260 as @a at @s run playsound block.note_block.bit record @s ~ ~ ~ 2 0.5
execute if score #countdown fork_data matches 280 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"yellow","text":"1"}]
execute if score #countdown fork_data matches 280 run title @a[team=!] title {"color":"yellow","shadow_color":-22016,"text":"1"}
execute if score #countdown fork_data matches 280 as @a at @s run playsound block.note_block.bit record @s ~ ~ ~ 2 0.5
execute if score #countdown fork_data matches 300 run tellraw @a [{"color":"red","text":"Countdown: "},{"color":"green","text":"GO!"}]
execute if score #countdown fork_data matches 300 run title @a[team=!] title {"color":"green","shadow_color":-16733696,"bold":true,"text":"GO!"}
execute if score #countdown fork_data matches 300 as @a at @s run playsound block.note_block.bit record @s ~ ~ ~ 2 1
execute if score #countdown fork_data matches 302 as @a at @s run playsound block.note_block.bit record @s ~ ~ ~ 2 1
execute if score #countdown fork_data matches 304 as @a at @s run playsound block.note_block.bit record @s ~ ~ ~ 2 1
execute if score #countdown fork_data matches 304 run title @a clear
execute if score #countdown fork_data matches 304 run function fork:game/states/to_2active