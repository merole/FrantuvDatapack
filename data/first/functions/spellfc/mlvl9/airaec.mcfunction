execute as @s at @s run tp @s ~ ~ ~ ~50 ~
execute as @s at @s run particle cloud ^ ^ ^-3 0 0 0 0 1 normal @a
execute as @s at @s run particle cloud ^ ^ ^3 0 0 0 0 1 normal @a

execute as @s[scores={SpellCD = 100}] at @s run playsound entity.breeze.idle_air player @a ~ ~ ~ 1 0.6
execute as @s[scores={SpellCD = 80}] at @s run playsound entity.breeze.idle_air player @a ~ ~ ~ 1 0.5
execute as @s[scores={SpellCD = 60}] at @s run playsound entity.breeze.idle_air player @a ~ ~ ~ 1 0.4
execute as @s[scores={SpellCD = 40}] at @s run playsound entity.breeze.idle_air player @a ~ ~ ~ 1 0.3
execute as @s[scores={SpellCD = 1}] at @s run playsound entity.breeze.idle_air player @a ~ ~ ~ 1 0.2
execute as @e[type=#first:projectiles,distance=..6] at @s run data modify entity @s Owner set from entity @s UUID
execute as @e[type=#first:projectiles,distance=..6] at @s store result entity @s Motion double -1 run data get entity @s Motion 2
execute as @e[type=#first:projectiles,distance=..6] at @s run particle poof ~ ~ ~ 0.1 0.1 0.1 0 3 normal @a