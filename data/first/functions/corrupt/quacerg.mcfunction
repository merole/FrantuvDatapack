### as corrupting qualak

execute as @s at @s run effect give @s instant_health 1 10 true
execute as @s at @s run tag @s add cerglan
execute as @s run tellraw @s {"text": "You are a cerglan now!"}
execute as @s at @s run playsound entity.elder_guardian.curse player @a ~ ~ ~ 10 0
execute as @s at @s run particle snowflake ~ ~1 ~ 0.2 1 0.2 0 50 force @a
execute as @s at @s run particle flash ~ ~1 ~ 0 1 0 0 20 force @a
execute as @s at @s run tag @s remove qualak

execute as @s at @s run tag @s remove fireMagik