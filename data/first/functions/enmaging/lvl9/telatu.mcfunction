execute as @s run scoreboard players set @s Mlvl 9
execute as @s at @s run particle flash ~ ~ ~ 0 0 0 1 1 force @a
execute as @s at @s run scoreboard players remove @s mana 10
execute as @s at @s run playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1
tellraw @s {"text":"Spell learned: Telatu","color": "red"}