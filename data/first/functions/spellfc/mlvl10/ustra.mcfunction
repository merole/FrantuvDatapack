scoreboard players remove @s mana 10
scoreboard players set @s SpellCD 300
scoreboard players set @s truodes 0

execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^ ^ ^-.25 {Duration:250,Radius:0,Tags:["lightningBall"]}

execute as @s anchored eyes at @s anchored eyes run scoreboard players set @e[distance=..2.5,type=area_effect_cloud,tag=lightningBall] SpellCD 250
execute anchored eyes as @e[distance=..2.5,type=area_effect_cloud,tag=lightningBall] anchored eyes at @s anchored eyes run tp @s ~ ~-.425 ~ facing entity @p[tag=ustraMagik,scores={SpellCD = 300}] eyes
execute as @s at @s run playsound item.trident.thunder player @a ~ ~-.5 ~ 10 0