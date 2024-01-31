scoreboard players remove @s mana 1
scoreboard players set @s SpellCD 200
scoreboard players set @s truodes 0

execute if block ~ ~ ~ #first:fragile run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #first:liquids run summon tnt ~ ~ ~ {fuse:0s,Silent:1b}
execute unless block ~ ~ ~ #first:liquids run particle portal ~ ~ ~ 1 1 1 0.1 100 force @a
execute unless block ~ ~ ~ #first:liquids run particle flash ~ ~ ~ 0 0 0 0 1 normal @a
execute unless block ~ ~ ~ #first:liquids run playsound block.bell.resonate player @a ~ ~ ~ 1 2

execute as @e[distance=..1.5,type=!#first:untargetable,tag=!endMagik] at @s run function first:spellfc/mlvl10/endspread

execute run playsound block.chorus_flower.grow player @a ~ ~ ~ 1 1
execute run particle dust 0.914 0.075 0.941 1 ~ ~ ~ 0.05 0.05 0.05 0 15 normal @a
execute if score @s mana matches -2.. if block ~ ~ ~ #first:liquids run execute positioned ^ ^ ^1 run function first:spellfc/mlvl10/end