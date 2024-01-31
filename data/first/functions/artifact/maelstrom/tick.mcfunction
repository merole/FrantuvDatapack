execute as @s at @s run particle dust 0.051 0.788 0.933 1 ^ ^ ^ 0.1 0.1 0.1 0 8 force @a

execute as @s[predicate=first:in_water] at @s run execute as @e[distance=..3,type=!#first:untargetable,type=!trident] run tp @s ~ ~ ~