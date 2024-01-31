execute as @s at @s run item modify entity @s weapon.mainhand first:eat
execute as @s at @s run playsound entity.player.burp player @a ~ ~ ~
execute as @s at @s anchored eyes positioned ~ ~-.1 ~ positioned ^ ^ ^1 run particle item brown_mushroom ~ ~ ~
execute as @s at @s run effect give @s saturation 1 1 true
execute as @s run scoreboard players set @s random3 0