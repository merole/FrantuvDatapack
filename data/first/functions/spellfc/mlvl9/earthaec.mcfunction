execute as @s at @s run tp @s ~ ~ ~ ~35 ~
execute as @s at @s run particle item dirt ^ ^ ^-1 0 0 0 0 2 normal @a
execute as @s at @s run particle item dirt ^ ^ ^1 0 0 0 0 2 normal @a
execute as @s at @s run particle item dirt ^ ^ ^-2 0 0 0 0 2 normal @a
execute as @s at @s run particle item dirt ^ ^ ^2 0 0 0 0 2 normal @a
execute as @s at @s run particle item dirt ^ ^ ^-3 0 0 0 0 2 normal @a
execute as @s at @s run particle item dirt ^ ^ ^3 0 0 0 0 2 normal @a

execute as @s at @s run fill ^ ^ ^2 ^ ^ ^3 stone replace #first:liquids
execute as @s at @s run tp @s ~ ~.1 ~
execute as @s at @s run playsound block.moss.place player @a ~ ~ ~ 1 1