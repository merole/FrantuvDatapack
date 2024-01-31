execute as @s at @s run effect give @s instant_damage 1 2 true
execute as @s at @s run playsound block.conduit.ambient.short hostile @a ~ ~ ~ 1 1
execute as @s at @s run particle instant_effect ~ ~1 ~ 0.13 0.13 0.13 0 30 normal @a

execute as @s at @s run scoreboard players set @s SpellCD 200