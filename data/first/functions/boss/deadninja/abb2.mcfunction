execute as @s at @s run scoreboard players set @s SpellCD 200
execute as @s at @s run particle damage_indicator ~ ~1 ~ 0.2 0.01 0.2 0 30 normal @a
execute as @s at @s run playsound entity.witch.drink hostile @a ~ ~ ~ 1
execute as @s at @s run effect give @s instant_damage 1 1