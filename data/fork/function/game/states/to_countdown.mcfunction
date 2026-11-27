# lobby to countdown
tellraw @a {"color":"green","text":"----- All players are ready! -----","bold":true}
scoreboard players add #state fork_gamestate 1

# spread players
# TODO

# start countdown
scoreboard players set #countdown fork_data 0