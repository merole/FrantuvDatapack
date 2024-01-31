execute as @s at @s run particle dust 0 0.5 0 1 ~ ~.2 ~ 3 0 3 0 300 normal @a
execute as @s at @s run particle explosion ~ ~1 ~ 0.2 0.2 0.2 0 5 normal @a
scoreboard players set @s rumdu 0
scoreboard players remove @s mana 6
scoreboard players set @s SpellCD 250
execute as @s run tag @s add rumduing
execute as @s at @s as @e[distance=..8,type=!#first:untargetable,tag=!rumduing,] run damage @s 2 first:rumdu by @e[limit=1,sort=nearest,tag=rumduing]
execute as @s at @s as @p[tag=!rumduing,distance=..8] run damage @s 6 first:rumdu by @e[limit=1,sort=nearest,tag=rumduing]
execute as @s at @s run playsound entity.lightning_bolt.impact player @a ~ ~ ~ 1 0

execute as @e at @s store result score @s motionX run data get entity @s Pos[0] 10000
execute as @e at @s store result score @s motionY run data get entity @s Pos[1] 10000
execute as @e at @s store result score @s motionZ run data get entity @s Pos[2] 10000

execute as @s at @s as @e[distance= 0.1..8] run scoreboard players operation @s motionX -= @e[tag=rumduing,distance=..1] motionX
execute as @s at @s as @e[distance= 0.1..8] run scoreboard players operation @s motionZ -= @e[tag=rumduing,distance=..1] motionZ

execute as @e run scoreboard players set @s motionXInv 400000000
execute as @e run scoreboard players set @s motionZInv 400000000

execute as @s at @s as @e[distance= 0.1..8] run scoreboard players operation @s motionXInv /= @s motionX
execute as @s at @s as @e[distance= 0.1..8] run scoreboard players operation @s motionZInv /= @s motionZ

execute as @s at @s as @e[distance= 0.1..1,type=!giant] run scoreboard players set @s motionY 20000
execute as @s at @s as @e[distance= 1..2,type=!giant] run scoreboard players set @s motionY 16000
execute as @s at @s as @e[distance= 2..3,type=!giant] run scoreboard players set @s motionY 12000
execute as @s at @s as @e[distance= 3..4,type=!giant] run scoreboard players set @s motionY 8000
execute as @s at @s as @e[distance= 4..5,type=!giant] run scoreboard players set @s motionY 4000
execute as @s at @s as @e[distance= 6..7,type=!giant] run scoreboard players set @s motionY 2000
execute as @s at @s as @e[distance= 7..8,type=!giant] run scoreboard players set @s motionY 1000

execute as @e[distance= 0.1..8,type=!#first:untargetable,type=!giant] at @s store result entity @s Motion[0] double 0.0001 run scoreboard players get @s motionXInv
execute as @e[distance= 0.1..8,type=!#first:untargetable,type=!giant] at @s store result entity @s Motion[1] double 0.0001 run scoreboard players get @s motionY
execute as @e[distance= 0.1..8,type=!#first:untargetable,type=!giant] at @s store result entity @s Motion[2] double 0.0001 run scoreboard players get @s motionZInv
execute as @s run tag @s remove rumduing