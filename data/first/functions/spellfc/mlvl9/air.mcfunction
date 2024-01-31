scoreboard players set @s telatu 0
scoreboard players remove @s mana 8
scoreboard players set @s SpellCD 250

execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[90f,90f],Tags:[AirTelatu],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[72f,72f],Tags:[AirTelatu],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[54f,54f],Tags:[AirTelatu],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[36f,36f],Tags:[AirTelatu],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[18f,18f],Tags:[AirTelatu],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[0f,0f],Tags:[AirTelatu],Radius:0f}
execute as @s at @s run effect give @s levitation 10 255 true
execute as @s at @s run scoreboard players set @e[distance=..1,type=area_effect_cloud,tag=AirTelatu] SpellCD 100