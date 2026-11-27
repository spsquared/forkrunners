# tag players in game
execute as @a run tag @s remove fork_player
execute as @a[team=fork_red] run tag @s add fork_player
execute as @a[team=fork_blue] run tag @s add fork_player

# state machine - 0 is no game
execute if score #state fork_gamestate matches 0 run function fork:game/states/0lobby
execute if score #state fork_gamestate matches 1 run function fork:game/states/1countdown
execute if score #state fork_gamestate matches 2 run function fork:game/states/2active
execute if score #state fork_gamestate matches 3 run function fork:game/states/3end