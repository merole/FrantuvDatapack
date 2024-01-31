execute as @s at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @s at @s run tp @s ^ ^ ^1
execute as @s at @s run particle shriek 1 ~ ~ ~ 0 0 0 0 3 normal @a
execute as @s[predicate=!first:in_water] at @s run particle block lapis_block ~ ~ ~ 0 0 0 0.1 10 normal @a
execute as @s[predicate=!first:in_water] at @s run playsound enchant.thorns.hit block @a ~ ~ ~
execute as @s[predicate=!first:in_water] at @s run kill @s
execute as @s at @s if entity @p[distance=..1.5] run function first:boss/drowner/abb3hit