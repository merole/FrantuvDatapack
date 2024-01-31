execute as @s at @s on origin if predicate first:artifact/ricbow run tag @e[type=#first:projectiles,limit=1,distance=..1] add bounc
execute as @s at @s run scoreboard players set @s SpellCD 5000