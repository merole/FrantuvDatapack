execute as @s at @s run tp @s ~ ~ ~ ~50 ~
execute as @s at @s run particle flame ^ ^ ^-3 0 0 0 0 1 normal @a
execute as @s at @s run particle flame ^ ^ ^3 0 0 0 0 1 normal @a

execute as @s[scores={SpellCD = 100}] at @s run playsound block.fire.ambient player @a ~ ~ ~ 1 0.6
execute as @s[scores={SpellCD = 80}] at @s run playsound block.fire.ambient player @a ~ ~ ~ 1 0.5
execute as @s[scores={SpellCD = 60}] at @s run playsound block.fire.ambient player @a ~ ~ ~ 1 0.4
execute as @s[scores={SpellCD = 40}] at @s run playsound block.fire.ambient player @a ~ ~ ~ 1 0.3
execute as @s[scores={SpellCD = 1}] at @s run playsound block.fire.ambient player @a ~ ~ ~ 1 0.2

execute as @s at @s run execute as @e[type=#first:projectiles,distance=..6] at @s run playsound block.fire.extinguish player @a ~ ~ ~ 1 1
execute as @s at @s run execute as @e[type=#first:projectiles,distance=..6] at @s run particle lava
execute as @s at @s run execute as @e[type=#first:projectiles,distance=..6] at @s run kill @s

execute as @e[distance=..6,tag=!fireMagik,type=!#first:untargetable] run damage @s 6 on_fire by @p[tag=fireMagik]
execute as @e[distance=..6,tag=!fireMagik,type=!#first:untargetable] run damage @s 3 first:fire/firetelatu by @p[tag=fireMagik]
execute as @e[distance=..6,tag=!fireMagik,type=!#first:untargetable] run data merge entity @s {Fire:2}