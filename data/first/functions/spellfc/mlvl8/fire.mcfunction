scoreboard players set @s eraspha 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 200

effect give @s fire_resistance 20 1 true
effect give @s haste 8 0 true
execute as @s at @s as @e[distance=.2..6,type=!#first:untargetable] run damage @s 12 first:fire/fireeraspha by @p[tag=fireMagik]

execute as @s at @s run effect clear @e[distance=.2..7,type=!#first:untargetable] fire_resistance

execute as @s at @s run playsound entity.blaze.shoot player @a ~ ~ ~ 1
execute as @s at @s run particle flame ~ ~.2 ~ 1 0.1 1 0 100 normal @a
execute as @s at @s as @e[distance=.2..5,type=!#first:untargetable] at @s run particle lava ~ ~1 ~ 0.2 0.2 0.2 0 10 normal @a

execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:[fireeraspha],Duration:20,Radius:0}