execute as @s at @s run effect give @s jump_boost 10 2 true
execute as @s at @s run effect give @s speed 10 2 true
scoreboard players set @s SpellCD 100
execute as @s at @s run particle egg_crack ~ ~1 ~ 0.2 0.01 0.2 0 30 normal @a
execute as @s at @s run playsound entity.bee.sting hostile @a ~ ~ ~ 1
