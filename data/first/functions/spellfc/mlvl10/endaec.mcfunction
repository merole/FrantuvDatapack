execute run playsound block.chorus_flower.grow player @a ~ ~ ~ 1 1
execute run particle dust 0.914 0.075 0.941 1 ~ ~ ~ 0.05 0.05 0.05 0 15 normal @a
execute as @s at @s run tp @s ^ ^ ^1
execute as @s at @s unless block ~ ~ ~ #first:liquids run kill @s
execute as @s at @s run execute as @e[distance=..1.5,type=!#first:untargetable,tag=!endMagik] run damage @s 12 first:end/endtruodes by @p[tag=endMagik]