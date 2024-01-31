execute as @s at @s run particle soul ^ ^ ^1 0 0.2 0 0.5 0 normal @a
execute as @s at @s run particle soul ^-1 ^ ^ 0 .2 0 0.5 0 normal @a
execute as @s at @s run particle soul ^1 ^ ^ 0 .2 0 0.5 0 normal @a
execute as @s at @s run particle soul ^ ^ ^-1 0 .2 0 0.5 0 normal @a

execute as @s[scores={SpellCD=58..60}] at @s run playsound block.trial_spawner.detect_player neutral @a ~ ~ ~
execute as @s[scores={SpellCD=0..2}] at @s run playsound block.end_gateway.spawn block @a ~ ~ ~ 1 0
execute as @s[scores={SpellCD=0..2}] at @s run setblock ~ ~ ~ air
execute as @s[scores={SpellCD=0..2}] at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 .7 30 normal @a
execute as @s[scores={SpellCD=0..2}] at @s run particle flame ~ ~ ~ 0 0 0 1 30 normal @a
execute as @s[scores={SpellCD=0..2}] at @s run particle flash ~ ~ ~ 0 0 0 1 1 normal @a
 execute as @s[scores={SpellCD=0..2}] at @s run execute as @p[tag=magik,scores={Mlvl=8},distance=..5] at @s run function first:enmaging/lvl9/telatu

execute as @s at @s run tp @s ~ ~ ~ ~10 ~