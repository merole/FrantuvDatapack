execute as @s at @s as @p[tag=magik,sort=nearest,limit=1] run scoreboard players set @s Mlvl 7
execute as @s at @s run particle flash ~ ~ ~ 0 0 0 1 1 force @a
execute as @s at @s run scoreboard players remove @p[tag=magik,sort=nearest,limit=1] mana 10
execute as @s at @s run playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1
execute as @s at @s run kill @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..2,limit=1]
execute as @s at @s run kill @s
tellraw @p[tag=magik,sort=nearest,limit=1] {"text":"Spell learned: Rumdu","color": "yellow"}