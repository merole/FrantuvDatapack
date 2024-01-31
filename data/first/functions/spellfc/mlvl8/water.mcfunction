scoreboard players set @s eraspha 0
scoreboard players remove @s mana 5
execute as @s[predicate=first:in_water] run scoreboard players set @s SpellCD 20
execute as @s[predicate=!first:in_water] run scoreboard players set @s SpellCD 150

effect give @s dolphins_grace 10 0
effect give @s conduit_power 10 1
effect give @s instant_health 1 0
execute as @s[predicate=first:in_water] at @s as @e[distance=.2..8,type=!#first:untargetable] run damage @s 16 first:water/watereraspha by @p[tag=waterMagik]
execute as @s at @s as @e[distance=.2..8,type=!#first:untargetable] run damage @s 4 drown by @p[tag=waterMagik]

execute as @s at @s run effect give @e[distance=.2..8,type=!#first:untargetable] poison 5 0 true

execute as @s at @s run playsound entity.generic.splash player @a ~ ~ ~ 1
execute as @s at @s run playsound entity.guardian.attack player @a ~ ~ ~ 1
execute as @s at @s run particle splash ~ ~.2 ~ 1 0.1 1 0 1 normal @a
execute as @s at @s as @e[distance=.2..8,type=!#first:untargetable] at @s run particle bubble ~ ~1 ~ 0.2 0.2 0.2 0 10 normal @a

##execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:[skulkeraspha],Duration:20,Radius:0}