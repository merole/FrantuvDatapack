execute as @s at @s run tag @s add magik
execute as @s at @s run item replace entity @s weapon.mainhand with air
execute as @s at @s run item replace entity @s weapon.offhand with air
execute as @s run scoreboard players set @s SpellCD 1000
execute as @s run scoreboard players set @s Mlvl 1
execute as @s at @s run scoreboard players set @s SPick 1
execute as @s at @s run particle enchant ~ ~1 ~ 0.1 0 0.1 2 150 normal @a
execute as @s at @s run particle dust 0.929 0.937 0.341 1 ~ ~1 ~ 1 1 1 2 150 normal @a
execute as @s at @s run playsound block.enchantment_table.use player @a ~ ~ ~ 10 1
execute as @s at @s run playsound item.trident.return player @a ~ ~ ~ 10 1
tellraw @s {"text":"Spell learned: Ect","color": "yellow"}