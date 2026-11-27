# create teams
team add team_red
team modify team_red displayName [{"atlas":"items","sprite":"item/redstone"}, " Redstone"]
team modify team_red color red
team modify team_red prefix [{"atlas":"items","sprite":"item/redstone",color:"white"}, " "]
team add team_blue
team modify team_blue displayName [{"atlas":"items","sprite":"item/lapis_lazuli"}, " Lapis"]
team modify team_blue color blue
team modify team_blue prefix [{"atlas":"items","sprite":"item/lapis_lazuli",color:"white"}, " "]

tellraw @a "Fork Loaded"

# placing and breaking
give @p minecraft:white_wool[minecraft:can_place_on={}]
give @p minecraft:shears[can_break={blocks:["minecraft:white_wool"]}] 1
