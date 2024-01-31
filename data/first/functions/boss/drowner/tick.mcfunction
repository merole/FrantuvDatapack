execute as @e[type=area_effect_cloud,tag=drownerAbb1] at @s run function first:boss/drowner/abb1aec

execute as @e[type=area_effect_cloud,tag=drownerAbb3] at @s run function first:boss/drowner/abb3aec

execute as @s[scores={SpellCD=0}] at @s store result score @s random1 run random value 1..10

execute as @s[scores={random1=1}] at @s if entity @p[distance=..5] run function first:boss/drowner/abb1
execute as @s[scores={random1=2}] at @s if entity @p[distance=20..] run function first:boss/drowner/abb2
execute as @s[scores={random1=3}] at @s run function first:boss/drowner/abb3
execute as @s[scores={random1=4}] at @s run function first:boss/drowner/abb4
execute as @s[scores={random1=5},predicate=!first:in_water] at @p run function first:boss/drowner/abb5


execute as @s run scoreboard players set @s random1 -1