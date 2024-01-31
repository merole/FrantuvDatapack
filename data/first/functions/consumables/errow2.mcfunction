execute as @s at @s run tp @s ~ ~ ~ ~10 ~
execute as @s at @s run particle dust 1 0 0 1 ^ ^ ^6 0 0.2 0 0.2 0 normal @a
execute as @s at @s run particle dust 1 0 0 1 ^ ^ ^-6 0 0.2 0 0.2 0 normal @a
execute as @s at @s run particle dust 1 0 0 1 ^-6 ^ ^ 0 0.2 0 0.2 0 normal @a
execute as @s at @s run particle dust 1 0 0 1 ^6 ^ ^ 0 0.2 0 0.2 0 normal @a

execute as @s at @s run summon arrow ^ ^10 ^3 {Tags:[marrow],Motion:[0d,1d,0d]}
execute as @s at @s positioned ^ ^10 ^3 run scoreboard players set @e[type=arrow,limit=1,sort=nearest] SpellCD 5
execute as @s at @s run summon arrow ^ ^10 ^-3 {Tags:[marrow],Motion:[0d,1d,0d]}
execute as @s at @s positioned ^ ^10 ^-3 run scoreboard players set @e[type=arrow,limit=1,sort=nearest] SpellCD 5
execute as @e[type=arrow,tag=marrow,nbt={inGround:0b}] at @s run function first:consumables/errow3