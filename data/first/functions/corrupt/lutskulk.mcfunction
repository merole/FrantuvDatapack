### as corrupting lutuk

execute as @s at @s run effect give @s instant_health 1 10 true
execute as @s at @s run tag @s add skulkin
execute as @s run tellraw @s {"text": "You are a skulkin now!"}
execute as @s at @s run playsound entity.warden.sonic_boom player @a ~ ~ ~ 10 0
execute as @s at @s run particle sonic_boom ~ ~1 ~ 0 1 0 0 20 force @a
execute as @s at @s run particle flash ~ ~1 ~ 0 1 0 0 20 force @a
execute as @s at @s run tag @s remove lutuk