scoreboard players remove @s mana 10
scoreboard players set @s SpellCD 300
scoreboard players set @s truodes 0

execute as @s at @s run playsound entity.generic.explode player @a ~ ~ ~ 0.5 0
execute as @s at @s run summon area_effect_cloud ^-.6 ^ ^-1 {Tags:["quake"],Radius:0,Duration:100}
execute as @s at @s run summon area_effect_cloud ^-.4 ^ ^-1 {Tags:["quake"],Radius:0,Duration:100}
execute as @s at @s run summon area_effect_cloud ^-.2 ^ ^-1 {Tags:["quake"],Radius:0,Duration:100}
execute as @s at @s run summon area_effect_cloud ^ ^ ^-1 {Tags:["quake"],Radius:0,Duration:100}
execute as @s at @s run summon area_effect_cloud ^.2 ^ ^-1 {Tags:["quake"],Radius:0,Duration:100}
execute as @s at @s run summon area_effect_cloud ^.4 ^ ^-1 {Tags:["quake"],Radius:0,Duration:100}
execute as @s at @s run summon area_effect_cloud ^.6 ^ ^-1 {Tags:["quake"],Radius:0,Duration:100}
execute as @e[type=area_effect_cloud,tag=quake,distance=..2.5] at @s run tp @s ~ ~ ~ facing entity @p[tag=earthMagik,sort=nearest] feet