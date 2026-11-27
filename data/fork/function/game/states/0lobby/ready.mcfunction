# 2 means it's been processed
scoreboard players set @s fork_ready 2
playsound entity.arrow.hit_player master @s
tellraw @a ["  ",{selector:"@s"},{"color":"gold","text":" is ready!"}]