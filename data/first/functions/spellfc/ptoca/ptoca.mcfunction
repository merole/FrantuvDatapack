#### as ptocaing magik
scoreboard players set @s ptoca 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 3

execute as @s at @s anchored eyes run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Invisible:0b,Tags:["ptoca"],CustomNameVisible:0b}
execute as @s at @s run scoreboard players operation @e[distance=...5,tag=ptoca] CastN = @s CastN
execute as @s at @s anchored eyes run tp @e[distance=...5,tag=ptoca] ^ ^-.5 ^6 facing entity @s eyes
##execute as @s at @s run particle dust 0.408 0.855 0.165 1 ^ ^1 ^1 0.01 0.01 0.01 0.1 10 normal @a
##execute as @s at @s run particle dust 0.408 0.855 0.165 1 ^ ^1 ^2 0.01 0.01 0.01 0.1 10 normal @a
##execute as @s at @s run particle dust 0.408 0.855 0.165 1 ^ ^1 ^3 0.01 0.01 0.01 0.1 10 normal @a
##execute as @s at @s run particle dust 0.408 0.855 0.165 1 ^ ^1 ^4 0.01 0.01 0.01 0.1 10 normal @a
##execute as @s at @s run particle dust 0.408 0.855 0.165 1 ^ ^1 ^5 0.01 0.01 0.01 0.1 10 normal @a
##execute as @s at @s run particle dust 0.408 0.855 0.165 1 ^ ^1 ^6 0.01 0.01 0.01 0.1 10 normal @a
execute as @s at @s run particle dust 0.337 0.843 0.067 1 ^ ^1 ^6 0 0.5 0 0.1 30 normal @a
execute as @s at @s run particle dust 0.337 0.843 0.067 1 ^ ^1 ^6 0.5 0 0 0.1 30 normal @a
execute as @s at @s run particle dust 0.337 0.843 0.067 1 ^ ^1 ^6 0 0 0.5 0.1 30 normal @a
execute as @e[tag=ptoca] at @s unless block ~ ~ ~ #rain_blocking run tp @e[type=!#first:untargetable,distance=..4] ~ ~ ~
execute as @s at @s at @e[tag=ptoca,limit=1] if entity @e[type=!#first:untargetable,distance=..1] run scoreboard players add @s mana 5
execute as @s at @s at @e[tag=ptoca,limit=1] run effect give @e[type=!#first:untargetable,distance=..1] slow_falling 1 1 true
execute as @e[tag=ptoca] run kill @s
