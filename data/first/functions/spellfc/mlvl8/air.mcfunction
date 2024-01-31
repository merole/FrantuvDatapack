scoreboard players set @s eraspha 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 200

effect give @s slow_falling 5 1 true
effect give @s jump_boost 1 3 true
execute as @s at @s run effect give @e[distance=.2..8,type=!#first:untargetable] levitation 1 10 true
execute as @s at @s as @e[distance=.2..8,type=!#first:untargetable] run damage @s 8 first:air/aireraspha by @p[tag=airMagik]

execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Radius:0,Duration:20,Tags:[AirErasphaCosmetic]}


execute as @s at @s run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1
execute as @s at @s run particle cloud ~ ~ ~ 1 0.125 1 0.2 100 normal @a
execute as @s at @s as @e[distance=.2..8,type=!#first:untargetable] run particle poof ~ ~ ~ 0 -1 0 0.2 0 normal @a