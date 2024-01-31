scoreboard players remove @s mana 10
scoreboard players set @s SpellCD 300
scoreboard players set @s truodes 0

execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^ ^ ^-.25 {Duration:100,Radius:0,Tags:["truodesWither"]}
execute as @s anchored eyes at @s anchored eyes run scoreboard players set @e[distance=..2,type=area_effect_cloud,tag=truodesWither] SpellCD 100
execute anchored eyes as @e[distance=..2,type=area_effect_cloud,tag=truodesWither] anchored eyes at @s anchored eyes run tp @s ~ ~-.425 ~ facing entity @p[tag=witherMagik,scores={SpellCD = 300}] eyes
execute as @s at @s run playsound particle.soul_escape player @a ~ ~ ~ 10 0