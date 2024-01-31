### as geresuing magik
scoreboard players set @s geresu 0
execute as @s at @s if entity @e[distance=..2, predicate=first:weak] run scoreboard players add @s mana 1
execute as @s at @s unless entity @e[distance=..2,predicate=first:weak] run scoreboard players remove @s mana 1
scoreboard players set @s SpellCD 1
execute as @s at @s run damage @e[distance=..2,predicate=first:weak,limit=1,sort=nearest] 2 first:geresu by @s from @s
execute as @s at @s at @e[distance=..1] run playsound entity.wither.shoot player @a ~ ~ ~ 0.5 1
execute as @s at @s at @e[distance=..2,type=#first:weak] run particle damage_indicator ~ ~2 ~ 0 0 0 0 15 normal @a
execute as @s at @s run particle dust 0.847 0.816 0.208 1 ~ ~2 ~ 0.1 0.1 0.1 0 25 normal @a