execute as @s at @s run tp @s ~ ~ ~ ~10 ~1.5

execute as @s at @s run particle dust_color_transition 0.035 0.886 0.945 0.5 0.059 0.027 0.957 ^ ^ ^.5 0 0 0 0 1 normal @a
execute as @s at @s run particle dust_color_transition 0.035 0.886 0.945 0.5 0.059 0.027 0.957 ^ ^ ^-.5 0 0 0 0 1 normal @a

execute as @s at @s run particle dust_color_transition 0.035 0.886 0.945 0.5 0.059 0.027 0.957 ^ ^ ^1 0 0 0 0 1 normal @a
execute as @s at @s run particle dust_color_transition 0.035 0.886 0.945 0.5 0.059 0.027 0.957 ^ ^ ^-1 0 0 0 0 1 normal @a

execute as @s at @s run particle dust_color_transition 0.035 0.886 0.945 0.5 0.059 0.027 0.957 ^ ^ ^1.5 0 0 0 0 1 normal @a
execute as @s at @s run particle dust_color_transition 0.035 0.886 0.945 0.5 0.059 0.027 0.957 ^ ^ ^-1.5 0 0 0 0 1 normal @a

execute as @s at @s run particle dust_color_transition 0.035 0.886 0.945 0.5 0.059 0.027 0.957 ^ ^ ^2 0 0 0 0 1 normal @a
execute as @s at @s run particle dust_color_transition 0.035 0.886 0.945 0.5 0.059 0.027 0.957 ^ ^ ^-2 0 0 0 0 1 normal @a

execute as @s[predicate=first:in_water] at @s run execute as @e[distance=1..7,type=!#first:untargetable,type=!trident] at @s run tp @s ^ ^ ^.01 facing entity @e[distance=..7,limit=1,sort=nearest,type=area_effect_cloud,tag= maelstrom]