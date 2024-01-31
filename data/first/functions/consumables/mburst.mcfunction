execute as @s at @s on origin at @s run particle dust 0.78 0.914 0.247 1 ~ ~1 ~ 0.1 0.2 0.1 0 50 normal @a
execute as @s at @s on origin at @s run scoreboard players add @s mana 6
execute as @s at @s on origin at @s run playsound block.respawn_anchor.set_spawn player @a ~ ~ ~
kill @s
