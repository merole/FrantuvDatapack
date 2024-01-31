#### as mage binding magic to his wand
execute as @s run scoreboard players set @s counter1 0
execute as @s at @s if score @s Mlvl matches 0 run scoreboard players set @s SPick 0
execute as @s at @s if score @s Mlvl matches 1.. run scoreboard players add @s SPick 1
playsound block.note_block.snare neutral @s ~ ~ ~ 0.1 1 1