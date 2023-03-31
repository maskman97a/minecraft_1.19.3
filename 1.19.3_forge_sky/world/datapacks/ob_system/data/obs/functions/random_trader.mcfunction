execute as @e[tag=ob.visit_dealer] at @s run particle minecraft:cloud ~ ~ ~ 0.125 0.5 0.125 0.05 10 force
tp @e[tag=ob.visit_dealer] 0 -1000 0

summon marker ~ ~ ~ {Tags:["ob.trader_spawn"]}
spreadplayers ~ ~ 50 100 false @e[tag=ob.trader_spawn]
execute at @e[tag=ob.trader_spawn] run summon villager ~ ~ ~ {Tags:["ob.visit_dealer"],CustomName:'{"text":"Visiting Trader","color":"green"}',VillagerData:{profession:"minecraft:nitwit",type:"minecraft:jungle"},Offers:{Recipes:[]}}
execute at @e[tag=ob.trader_spawn] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;65280],FadeColors:[I;16777215]}]}}}}
kill @e[tag=ob.trader_spawn]

scoreboard players set @s cob.trader 0