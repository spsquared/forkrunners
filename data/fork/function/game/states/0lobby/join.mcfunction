$team join fork_$(team)
$tellraw @s [{"bold":true,"color":"$(team)","text":"Joined Team ["},{"atlas":"items","sprite":"item/$(item)"},{"bold":true,"color":"$(team)","text":"] $(name)!"}]
particle glow ~ ~ ~ 0 2 0 1 20
# resistance 5 or die
effect give @s resistance 1 4
$summon firework_rocket ~ ~2 ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[I;$(color)]}]}}}}