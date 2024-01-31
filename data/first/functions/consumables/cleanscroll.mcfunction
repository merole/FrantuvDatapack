execute as @s at @s run playsound entity.firework_rocket.launch player @a ~ ~ ~
execute as @s at @s run particle flash ~ ~ ~ 0 0 0 0 1 normal @a
execute as @s at @s on origin run item modify entity @s weapon.offhand first:disenchant
execute as @s at @s on origin run item modify entity @s weapon.mainhand first:disenchant
kill @s