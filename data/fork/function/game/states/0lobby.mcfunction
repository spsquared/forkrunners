# lobby

# team selection - armor stands
execute as @a[team=!fork_red,gamemode=!creative,gamemode=!spectator] at @s if entity @e[type=armor_stand,tag=fork_red,distance=..2] run function fork:game/states/0lobby/join {team:"red",item:"redstone",name:"Redstone",color:16711680}
execute as @a[team=!fork_blue,gamemode=!creative,gamemode=!spectator] at @s if entity @e[type=armor_stand,tag=fork_blue,distance=..2] run function fork:game/states/0lobby/join {team:"blue",item:"lapis_lazuli",name:"Lapis",color:17663}
# count total people on teams and ready people on teams
execute store result score #total_players fork_data if entity @a[tag=fork_player]
execute store result score #ready_players fork_data if entity @a[tag=fork_player,scores={fork_ready=2}]

# run timer for readiness message
scoreboard players add #ready_message fork_data 1
execute if score #ready_message fork_data matches 200 run function fork:game/states/0lobby/ready_message
# poll readiness
execute as @a[scores={fork_ready=1}] at @s run function fork:game/states/0lobby/ready

# if enough people are ready the game starts
execute if score #ready_players fork_data >= #min_ready_players fork_gamestate if score #ready_players fork_data = #total_players fork_data run function fork:game/states/to_1countdown