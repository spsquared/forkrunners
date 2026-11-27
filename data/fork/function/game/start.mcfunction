# game start

# setup players
clear @a
gamemode adventure @a[gamemode=!creative,gamemode=!spectator]
execute as @a run attribute @s max_health base set 1

# reset scoreboards
scoreboard players set #state fork_gamestate 0
