scoreboard players set @s eraspha 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 200

effect give @s resistance 3 1 true
effect give @s absorption 3 3 true
execute as @e[distance=.2..8,type=!#first:untargetable] at @s run tp @s ~ ~-1.5 ~
execute as @s at @s as @e[distance=.2..8,type=!#first:untargetable] run damage @s 8 first:earth/eartheraspha by @p[tag=earthMagik]

execute as @s at @s run effect give @e[distance=.2..8,type=!#first:untargetable] mining_fatigue 10 1 true


execute as @s at @s run playsound block.basalt.break player @a ~ ~ ~ 1
execute as @s at @s run particle block dirt ~ ~ ~ 1 0.125 1 0.1 100 normal @a
execute as @s at @s as @e[distance=.2..8,type=!#first:untargetable] at @s run particle falling_dust dirt ~ ~1 ~ 0.2 0.2 0.2 0 10 normal @a