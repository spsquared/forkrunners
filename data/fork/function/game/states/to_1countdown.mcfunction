# lobby to countdown
tellraw @a {"color":"green","text":"----- All players are ready! -----","bold":true}
scoreboard players add #state fork_gamestate 1

# spread players
# TODO

# players are invisible so they can scatter
effect give @a[tag=fork_player] invisibility 12 0 true
# set health here (1 heart, 5 block safe fall distance)
execute as @a[tag=fork_player] run attribute @s max_health base set 2
execute as @a[tag=fork_player] run attribute @s safe_fall_distance base set 5

# start countdown
scoreboard players set #countdown fork_data 0