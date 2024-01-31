execute as @s at @s if entity @p[distance=..2] run function first:boss/deadninja/swap
execute as @s at @s if entity @p[distance=3.1..] run function first:boss/deadninja/swapb
execute as @s[scores={SpellCD = 0}] at @s store result score @s random1 run random value 0..20
execute as @s at @s store result score @s Health run data get entity @s Health 10
execute as @s[scores={Health = ..1000}] at @s run execute as @e[type=arrow,distance=..5,tag=!bounc] at @s store result entity @s Motion[0] double 0.0001 run data get entity @s Motion[0]
execute as @s[scores={Health = ..1000}] at @s run execute as @e[type=arrow,distance=..5,tag=!bounc] at @s store result entity @s Motion[2] double 0.0001 run data get entity @s Motion[2]

execute as @s[scores={SpellCD = 0,random1 = 1}] at @s run function first:boss/deadninja/abb1
execute as @s[scores={SpellCD = 0,random1 = 2}] at @s run function first:boss/deadninja/abb2
execute as @s[scores={SpellCD = 0,random1 = 3}] at @s run function first:boss/deadninja/abb3
execute as @s[scores={SpellCD = 0,random1 = 4}] at @s run function first:boss/deadninja/abb4


scoreboard players set @s random1 -1