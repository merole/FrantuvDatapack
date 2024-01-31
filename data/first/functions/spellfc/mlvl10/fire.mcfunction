scoreboard players remove @s mana 6
scoreboard players set @s SpellCD 200
scoreboard players set @s truodes 0

execute as @s at @s run summon area_effect_cloud ^-.2 ^ ^-.4 {Tags:["fireTruodes"],Radius:0,Duration:20}
execute as @s at @s run summon area_effect_cloud ^ ^ ^-.4 {Tags:["fireTruodes"],Radius:0,Duration:20}
execute as @s at @s run summon area_effect_cloud ^.2 ^ ^-.4 {Tags:["fireTruodes"],Radius:0,Duration:20}
execute as @e[type=area_effect_cloud,tag=fireTruodes,distance=..2.5] at @s run tp @s ~ ~-.45 ~ facing entity @p[tag=fireMagik,sort=nearest] eyes
execute as @e[type=area_effect_cloud,tag=fireTruodes,distance=..2] at @s run scoreboard players set @s SpellCD 20
execute as @s at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 1 1