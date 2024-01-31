execute as @s at @s run damage @e[distance=..1,tag=!waterMagik,limit=1] 10 first:water/watertruodes by @p[tag=waterMagik]
effect give @e[distance=..1,tag=!waterMagik,limit=1] levitation 1 12 true
effect give @e[distance=..1,tag=!waterMagik,limit=1] weakness 12 1 true
execute as @s at @s run particle dust 1 1 1 1 ~ ~ ~ 0.1 0 0.1 0 10 force @a
execute as @s at @s run particle splash ~ ~4 ~ 0.1 1 0.1 1 30 force @a
execute as @s at @s run particle splash ~ ~2 ~ 0.1 1 0.1 1 30 force @a
execute as @s at @s run particle splash ~ ~1 ~ 0.1 1 0.1 1 30 force @a
execute as @s at @s run playsound entity.generic.swim player @a ~ ~ ~ 1 1


