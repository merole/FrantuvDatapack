scoreboard players set @s eraspha 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 200

effect give @s invisibility 5 1 true
effect give @s speed 5 3 true
execute as @e[distance=.2..8,type=!#first:untargetable] at @s run tp @s ~ ~ ~
execute as @s at @s as @e[distance=.2..8,type=!#first:untargetable] run damage @s 6 first:end/enderaspha by @p[tag=endMagik]

execute as @s at @s run effect give @e[distance=.2..8,type=!#first:untargetable] nausea 4 0 true


execute as @s at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 1
execute as @s at @s run particle reverse_portal ~ ~1 ~ 0.125 0.25 0.125 0.1 100 normal @a
execute as @s at @s as @e[distance=.2..8,type=!#first:untargetable] at @s run particle flash ^ ^1.5 ^.2 0 0 0 0 1 normal @a
execute as @s at @s run spreadplayers ~ ~ 10 10 false @s
