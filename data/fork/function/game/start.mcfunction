# game start
tellraw @a ["----- ",{"atlas":"items","sprite":"item/trident"},{"bold":true,"color":"aqua","shadow_color":-11184641,"text":" FORK RUNNERS "},{"atlas":"items","sprite":"item/trident"},{"color":"aqua","text":" is starting!"}," -----"]
scoreboard players reset #missing_stands
execute unless entity @e[type=armor_stand,tag=fork_red] run scoreboard players set #missing_stands fork_data 1
execute unless entity @e[type=armor_stand,tag=fork_blue] run scoreboard players set #missing_stands fork_data 1
execute if score #missing_stands fork_data matches 1 run tellraw @a {"color":"red","text":"Failed to start: missing team joining stands. Run function admin to get started"}
execute if score #missing_stands fork_data matches 1 run return fail

# setup players
clear @a
gamemode adventure @a[gamemode=!creative,gamemode=!spectator]
execute as @a run attribute @s max_health base set 1
team empty team_red
team empty team_blue

# reset scoreboards and go to lobby
scoreboard players set #state fork_gamestate 0
scoreboard players reset @a fork_ready
