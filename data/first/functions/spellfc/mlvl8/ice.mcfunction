scoreboard players set @s eraspha 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 200

effect give @s speed 20 0 true
effect give @s absorption 8 0 true
execute as @s at @s as @e[distance=.2..4,type=!#first:untargetable] run damage @s 16 first:ice/iceeraspha by @p[tag=iceMagik]
execute as @s at @s as @e[distance=.2..4,type=!#first:untargetable] at @s if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~1 ~ ice keep
execute as @s at @s as @e[distance=.2..4,type=!#first:untargetable] at @s if biome ~ ~ ~ #minecraft:spawns_cold_variant_frogs run setblock ~ ~ ~ ice keep
execute as @s at @s run effect give @e[distance=.2..11,type=!#first:untargetable] slowness 10 1 true

execute as @s at @s run playsound entity.skeleton.converted_to_stray player @a ~ ~ ~ 1
execute as @s at @s run particle snowflake ~ ~.2 ~ 1 0.1 1 0 100 normal @a
execute as @s at @s run particle block ice ~ ~.2 ~ 1.2 0.1 1.2 0 100 normal @a
execute as @s at @s as @e[distance=.2..11,type=!#first:untargetable] at @s run particle snowflake ~ ~1 ~ 0.2 0.2 0.2 0 10 normal @a

execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:[iceeraspha],Duration:20,Radius:0}