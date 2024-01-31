execute as @s at @s run tp @s ^ ^ ^.3
execute as @s at @s run particle electric_spark ~ ~ ~ 0.15 0.15 0.15 0 50 force @a
execute as @s at @s run particle dust 0.816 0.914 0.082 1 ~ ~ ~ 0.15 0.15 0.15 0 20 force @a
execute as @s at @s run playsound block.beehive.work player @a ~ ~ ~ 0.5 2

execute unless block ~ ~ ~ #first:liquids run summon lightning_bolt
execute unless block ~ ~ ~ #first:liquids run kill @s
execute if block ~ ~-1 ~ #first:copper run summon lightning_bolt
execute if block ~ ~ ~ water run particle splash ~ ~ ~ 0.625 0.625 0.625 0 40 normal @a

execute if entity @e[distance=..5,tag=!ustraMagik,type=!#first:untargetable] run function first:spellfc/mlvl10/ustraboom