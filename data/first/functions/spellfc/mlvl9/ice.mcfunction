scoreboard players set @s telatu 0
scoreboard players remove @s mana 8
scoreboard players set @s SpellCD 250

execute as @s at @s run summon area_effect_cloud ~ ~2 ~ {Radius:5,Duration:200,Particle:"minecraft:snowflake",RadiusPerTick:-0.01f,Tags:[IceTelatu]}
