execute as @s at @s if block ~ ~ ~-.9 #rain_blocking store result entity @s Motion[2] double -0.8 run data get entity @s Motion[2]
execute as @s at @s if block ~ ~ ~.9 #rain_blocking store result entity @s Motion[2] double -0.8 run data get entity @s Motion[2]

execute as @s at @s if block ~.9 ~ ~ #rain_blocking store result entity @s Motion[0] double -0.8 run data get entity @s Motion[0]
execute as @s at @s if block ~-.9 ~ ~ #rain_blocking store result entity @s Motion[0] double -0.8 run data get entity @s Motion[0]

execute as @s[nbt={inGround:0b}] at @s run particle scrape ~ ~ ~ 0 0 0 0 1 normal @a