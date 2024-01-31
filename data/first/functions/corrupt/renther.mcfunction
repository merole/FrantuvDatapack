### as corrupting renwik

execute as @s at @s run effect give @s instant_health 1 10 true
execute as @s at @s run tag @s add therwin
execute as @s run tellraw @s {"text": "You are a therwin now!"}
execute as @s at @s run playsound entity.wither.spawn player @a ~ ~ ~ 10 0
execute as @s at @s run particle soul ~ ~1 ~ 0.4 1 0 0.4 40 force @a
execute as @s at @s run particle flash ~ ~1 ~ 0 1 0 0 20 force @a
execute as @s at @s run tag @s remove renwik