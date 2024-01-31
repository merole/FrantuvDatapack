execute as @s at @s run particle dust 0.824 0.894 0.055 0.6 ~ ~1 ~ 1 1 1 0 1 normal @a
execute as @s at @s run playsound block.amethyst_block.chime block @a ~ ~ ~ 0.1 0
execute as @s at @s if block ~ ~ ~ player_head{SkullOwner:{Name:"Drewski_Games"}} if entity @p[tag=magik,scores={Mlvl = 8},distance=..5] run function first:enmaging/lvl9/lvl9
execute as @s at @s if block ~ ~ ~ dragon_head if entity @p[tag=magik,scores={Mlvl = 9},distance=..5] run function first:enmaging/lvl10/lvl10