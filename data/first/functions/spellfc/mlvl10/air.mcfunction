scoreboard players remove @s mana 10
scoreboard players set @s SpellCD 300
scoreboard players set @s truodes 0

execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^ ^ ^-.25 {Duration:100,Radius:0,Tags:["tornado"]}
execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^ ^.09 ^-.25 {Duration:100,Radius:0,Tags:["tornado"]}
execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^ ^-.09 ^-.25 {Duration:100,Radius:0,Tags:["tornado"]}
execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^-.09 ^ ^-.25 {Duration:100,Radius:0,Tags:["tornado"]}
execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^.09 ^ ^-.25 {Duration:100,Radius:0,Tags:["tornado"]}
execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^.045 ^-.045 ^-.25 {Duration:100,Radius:0,Tags:["tornado"]}
execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^-.045 ^-.045 ^-.25 {Duration:100,Radius:0,Tags:["tornado"]}
execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^-.045 ^.045 ^-.25 {Duration:100,Radius:0,Tags:["tornado"]}
execute as @s anchored eyes at @s anchored eyes run summon area_effect_cloud ^.045 ^.045 ^-.25 {Duration:100,Radius:0,Tags:["tornado"]}

execute as @s anchored eyes at @s anchored eyes run scoreboard players set @e[distance=..2,type=area_effect_cloud,tag=tornado] SpellCD 100
execute anchored eyes as @e[distance=..2,type=area_effect_cloud,tag=tornado] anchored eyes at @s anchored eyes run tp @s ~ ~-.4 ~ facing entity @p[tag=airMagik,scores={SpellCD = 300}] eyes
execute as @s at @s run playsound entity.ender_dragon.flap player @a ~ ~-.5 ~ 10 0