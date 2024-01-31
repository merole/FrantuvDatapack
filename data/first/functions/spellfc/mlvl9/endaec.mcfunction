execute as @s[scores={SpellCD = 1}] at @s run fill ~ ~-2 ~ ~ ~1 ~ air replace end_gateway
execute as @s[scores={SpellCD = 1}] at @s run playsound block.end_portal_frame.fill block @a ~ ~ ~ 1 1

execute as @s at @s run particle end_rod ~.5 ~ ~-.5 0 -0.25 0 0.6 0 normal @a
execute as @s at @s run particle end_rod ~-.5 ~ ~.5 0 -0.25 0 0.6 0 normal @a
execute as @s at @s run particle end_rod ~-.5 ~ ~-.5 0 -0.25 0 0.6 0 normal @a
execute as @s at @s run particle end_rod ~.5 ~ ~.5 0 -0.25 0 0.6 0 normal @a