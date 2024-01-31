execute as @s run scoreboard players set @s SpellCD 200

execute as @s at @s run playsound block.conduit.activate hostile @a ~ ~ ~ 1 1
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[90f,90f],Tags:[drownerAbb1],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[72f,72f],Tags:[drownerAbb1],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[54f,54f],Tags:[drownerAbb1],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[36f,36f],Tags:[drownerAbb1],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[18f,18f],Tags:[drownerAbb1],Radius:0f}
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Rotation:[0f,0f],Tags:[drownerAbb1],Radius:0f}
execute as @s at @s run scoreboard players set @e[type=area_effect_cloud,tag=drownerAbb1,distance=..1] SpellCD 100