scoreboard players remove @s mana 8
scoreboard players set @s SpellCD 300
scoreboard players set @s truodes 0

execute as @s at @s run summon area_effect_cloud ^ ^.05 ^-.4 {Tags:["iceTruodes"],Radius:0,Duration:1000}
execute as @s at @s run summon area_effect_cloud ^ ^ ^-.4 {Tags:["iceTruodes"],Radius:0,Duration:1000}
execute as @s at @s run summon area_effect_cloud ^ ^-.05 ^-.4 {Tags:["iceTruodes"],Radius:0,Duration:1000}

execute as @s at @s run summon area_effect_cloud ^.04 ^.04 ^-.4 {Tags:["iceTruodes"],Radius:0,Duration:1000}
execute as @s at @s run summon area_effect_cloud ^.05 ^ ^-.4 {Tags:["iceTruodes"],Radius:0,Duration:1000}
execute as @s at @s run summon area_effect_cloud ^.04 ^-.04 ^-.4 {Tags:["iceTruodes"],Radius:0,Duration:1000}

execute as @s at @s run summon area_effect_cloud ^-.04 ^.04 ^-.4 {Tags:["iceTruodes"],Radius:0,Duration:1000}
execute as @s at @s run summon area_effect_cloud ^-.05 ^ ^-.4 {Tags:["iceTruodes"],Radius:0,Duration:1000}
execute as @s at @s run summon area_effect_cloud ^-.04 ^-.04 ^-.4 {Tags:["iceTruodes"],Radius:0,Duration:1000}

execute as @e[type=area_effect_cloud,tag=iceTruodes,distance=..2.5] at @s run tp @s ~ ~-.45 ~ facing entity @p[tag=iceMagik,sort=nearest] eyes
execute as @e[type=area_effect_cloud,tag=iceTruodes,distance=..2] at @s run scoreboard players set @s SpellCD 1000

execute as @s at @s run playsound block.glass.hit player @a ~ ~ ~