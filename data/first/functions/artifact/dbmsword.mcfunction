execute as @s at @s run particle soul ~ ~.21 ~ 0.5 0 0.5 0 3 normal @a
execute as @s at @s run playsound particle.soul_escape block @a ~ ~ ~ 0.2
execute as @s at @s run damage @e[distance=..2,predicate=!first:artifact/dbmsword,limit=1] 1 wither