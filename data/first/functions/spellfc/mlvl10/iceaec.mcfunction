execute as @s at @s run tp ^ ^ ^1
execute as @s at @s run particle item ice ~ ~ ~ 0 0 0 0 4 force @a
execute as @s at @s run execute as @e[distance=..2,type=!#first:untargetable,tag=!iceMagik] run playsound enchant.thorns.hit player @a ~ ~ ~ 1 1
execute as @s at @s run execute as @e[distance=..2,type=!#first:untargetable,tag=!iceMagik] run damage @s 24 freeze by @p[tag=iceMagik]
execute as @s at @s run execute as @e[distance=..2,type=!#first:untargetable,tag=!iceMagik] run damage @s 12 first:ice/icetruodes by @p[tag=iceMagik]
execute as @s at @s run execute as @e[distance=..2,type=!#first:untargetable,tag=!iceMagik] run effect give @s slowness 10 0 true
execute as @s at @s run tp @s ~ ~ ~ ~ ~.95
execute as @s at @s run playsound block.amethyst_block.chime block @a ~ ~ ~ 0.2 0

execute as @s at @s if block ~ ~ ~ #fire run setblock ~ ~ ~ air destroy
execute as @s at @s if block ~ ~ ~ water run setblock ~ ~ ~ ice destroy
execute as @s at @s if block ~ ~ ~ #first:fragile run setblock ~ ~ ~ air destroy

execute as @s at @s unless block ~ ~ ~ #first:liquids unless block ~ ~ ~ ice run playsound block.glass.break block @a ~ ~ ~ 1 1 
execute as @s at @s unless block ~ ~ ~ #first:liquids unless block ~ ~ ~ ice run kill @s
execute as @s at @s if block ~ ~ ~ lava run playsound block.glass.break block @a ~ ~ ~ 1 1
execute as @s at @s if block ~ ~ ~ lava run kill @s

