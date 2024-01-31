execute as @s at @s run particle dust 0.914 0.914 0.035 1 ^ ^ ^1 0 0.2 0 0.5 0 normal @a
execute as @s at @s run particle dust 0.914 0.914 0.035 1 ^-1 ^ ^ 0 .2 0 0.5 0 normal @a
execute as @s at @s run particle dust 0.914 0.914 0.035 1 ^1 ^ ^ 0 .2 0 0.5 0 normal @a
execute as @s at @s run particle dust 0.914 0.914 0.035 1 ^ ^ ^-1 0 .2 0 0.5 0 normal @a

execute as @s[scores={SpellCD=58..60}] at @s run playsound block.trial_spawner.detect_player neutral @a ~ ~ ~
execute as @s[scores={SpellCD=0..2}] at @s run playsound entity.ender_dragon.death block @a ~ ~ ~ 1 0
execute as @s[scores={SpellCD=0..2}] at @s run setblock ~ ~ ~ air
execute as @s[scores={SpellCD=0..2}] at @s run particle witch ~ ~ ~ 0 0 0 .7 30 normal @a
execute as @s[scores={SpellCD=0..2}] at @s run particle dragon_breath ~ ~ ~ 0 0 0 1 30 normal @a
execute as @s[scores={SpellCD=0..2}] at @s run particle flash ~ ~ ~ 0 0 0 1 1 normal @a
execute as @s[scores={SpellCD=0..2}] at @s run execute as @p[tag=magik,scores={Mlvl=9},distance=..5] at @s run function first:enmaging/lvl10/truodes

execute as @s at @s run tp @s ~ ~ ~ ~10 ~