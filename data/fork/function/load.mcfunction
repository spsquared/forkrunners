# create teams
team add team_red
team modify team_red displayName ["[",{"atlas":"items","sprite":"item/redstone"},"]Redstone"]
team modify team_red color red
team modify team_red prefix ["[",{"atlas":"items","sprite":"item/redstone",color:"white"},"] "]
team modify team_red friendlyFire false
team add team_blue
team modify team_red displayName ["[",{"atlas":"items","sprite":"item/lapis_lazuli"},"]Lapis"]
team modify team_blue color blue
team modify team_blue prefix ["[",{"atlas":"items","sprite":"item/lapis_lazuli",color:"white"},"] "]
team modify team_blue friendlyFire false

# reset
team empty team_red
team empty team_blue

# create scoreboards
# integer game state
scoreboard objectives remove fork_gamestate
scoreboard objectives add fork_gamestate dummy

# yay
tellraw @a "Fork Loaded"
