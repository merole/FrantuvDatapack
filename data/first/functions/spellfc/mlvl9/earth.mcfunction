scoreboard players set @s telatu 0
scoreboard players remove @s mana 8
scoreboard players set @s SpellCD 250

execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Duration:45,Rotation:[0f,0f],Tags:[EarthTelatu],Radius:0f}
execute as @s at @s run scoreboard players set @e[distance=..1,type=area_effect_cloud,tag=EarthTelatu] SpellCD 45
execute as @s at @s run playsound block.grass.break block @a ~ ~ ~ 1 1
execute as @s at @s run effect give @s jump_boost 5 4 true