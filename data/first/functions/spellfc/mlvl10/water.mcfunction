scoreboard players remove @s mana 10
scoreboard players set @s SpellCD 300
scoreboard players set @s truodes 0

execute as @s at @s run execute as @e[distance=1..15,tag=!waterMagik,type=!#first:untargetable,type=!item] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["geysir"],Radius:0,Duration:50}

