execute as @s at @s run scoreboard players set @s SpellCD 200
execute as @s at @s run particle falling_obsidian_tear ~ ~2 ~ 0.125 0 .125 0 80
execute as @s at @s run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 2

execute as @s at @s run effect give @s absorption 20 6 true
execute as @s at @s run effect give @s resistance 10 5 true