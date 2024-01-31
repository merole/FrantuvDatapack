execute as @s at @s run effect give @s instant_damage 1 2 true
execute as @s at @s run particle soul_fire_flame ~ ~ ~ 0.5 1 0.5 0 100 normal @a
execute as @s at @s run playsound entity.witch.throw hostile @a ~ ~ ~ 1
execute as @s run scoreboard players set @s random1 -1