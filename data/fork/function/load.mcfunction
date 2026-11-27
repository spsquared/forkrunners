# create teams
team add fork_red
team modify fork_red displayName ["[",{"atlas":"items","sprite":"item/redstone"},"]Redstone"]
team modify fork_red color red
team modify fork_red prefix ["[",{"atlas":"items","sprite":"item/redstone",color:"white"},"] "]
team modify fork_red friendlyFire false
team add fork_blue
team modify fork_red displayName ["[",{"atlas":"items","sprite":"item/lapis_lazuli"},"]Lapis"]
team modify fork_blue color blue
team modify fork_blue prefix ["[",{"atlas":"items","sprite":"item/lapis_lazuli",color:"white"},"] "]
team modify fork_blue friendlyFire false

# reset
function fork:game/end

# empty old data
data remove storage fork:data *

# create scoreboards
# integer game state (lots of comparisons)
scoreboard objectives remove fork_gamestate
scoreboard objectives add fork_gamestate dummy
# readiness
scoreboard objectives remove fork_ready
scoreboard objectives add fork_ready trigger
# generic scoreboard
scoreboard objectives remove fork_data
scoreboard objectives add fork_data dummy
# item uses
scoreboard objectives add used_wolf_egg minecraft.used:minecraft.wolf_spawn_egg

# constants
scoreboard players set #min_ready_players fork_gamestate 1

# yay
tellraw @a "Fork Loaded"
