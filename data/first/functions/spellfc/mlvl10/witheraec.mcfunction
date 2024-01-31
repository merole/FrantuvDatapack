execute as @s at @s run tp @s ^ ^ ^.9
execute as @s at @s run particle soul_fire_flame ~ ~.45 ~ 0.1 0.1 0.1 0 10 normal @a
execute as @s at @s run particle soul ~ ~.45 ~ 0.1 0.1 0.1 0 10 normal @a

execute as @s at @s run playsound entity.wither_skeleton.ambient player @a ~ ~ ~ 1 1

execute as @s at @s unless block ~ ~ ~ #first:liquids run kill @s

execute as @s at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 soul_soil replace #dirt
execute as @s at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 soul_sand replace #sand
execute as @s at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 dead_bush replace short_grass
execute as @s at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #leaves
execute as @s at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 netherrack replace stone
execute as @s at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 jack_o_lantern replace pumpkin

execute as @s at @s run damage @e[distance=..2,tag=!witherMagik,type=!#first:untargetable,limit=1] 14 wither by @p[tag=witherMagik]
execute as @s at @s run damage @e[distance=..2,tag=!witherMagik,type=!#first:untargetable,limit=1] 10 first:wither/withertruodes by @p[tag=witherMagik]
execute as @s at @s run effect give @e[distance=..2,tag=!witherMagik,type=!#first:untargetable] wither 8 1 true