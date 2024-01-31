scoreboard players set @s telatu 0
scoreboard players remove @s mana 8
scoreboard players set @s SpellCD 250

execute as @s at @s positioned ^ ^ ^3 align xyz run summon area_effect_cloud ~.5 ~3 ~.5 {Radius:0,Duration:200,Tags:["EndTelatu"]}
execute as @s at @s run scoreboard players set @e[distance=..5,type=area_effect_cloud,tag=EndTelatu] SpellCD 200

execute as @s at @s run execute as @e[tag=EndTelatu] at @s store result score @s motionX run random value -5000..5000
execute as @s at @s run execute as @e[tag=EndTelatu] at @s store result score @s motionZ run random value -5000..5000

execute as @s at @s run execute as @e[tag=EndTelatu] at @s run fill ~ ~-1 ~ ~ ~-2 ~ end_gateway{ExactTeleport:0b,Age:500L,ExitPortal:{X: 0 ,Y: 70,Z:0}} replace #first:liquids
execute as @s at @s run execute as @e[tag=EndTelatu] at @s store result block ~ ~-1 ~ ExitPortal.X int 1 run scoreboard players get @s motionX
execute as @s at @s run execute as @e[tag=EndTelatu] at @s store result block ~ ~-1 ~ ExitPortal.Z int 1 run scoreboard players get @s motionZ
execute as @s at @s run execute as @e[tag=EndTelatu] at @s store result block ~ ~-2 ~ ExitPortal.X int 1 run scoreboard players get @s motionX
execute as @s at @s run execute as @e[tag=EndTelatu] at @s store result block ~ ~-2 ~ ExitPortal.Z int 1 run scoreboard players get @s motionZ
