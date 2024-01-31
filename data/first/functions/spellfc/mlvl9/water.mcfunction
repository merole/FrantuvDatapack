scoreboard players set @s telatu 0
execute as @s at @s unless block ~ ~-1 ~ water run scoreboard players remove @s mana 8 
execute as @s at @s unless block ~ ~-1 ~ water run scoreboard players set @s SpellCD 200
execute as @s at @s if block ~ ~-1 ~ water run scoreboard players set @s SpellCD 50
execute as @s at @s if block ~ ~-1 ~ water run scoreboard players remove @s mana 2 

execute as @s at @s run playsound entity.boat.paddle_water player @a ~ ~ ~ 1 1
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["WaterTelatu"],Radius:0,Duration:50}
effect give @s levitation 1 15 true
execute as @s at @s run particle bubble ~ ~ ~ 0.8 0.1 0.8 1 200 normal @a
execute as @s at @s run playsound entity.puffer_fish.sting player @a ~ ~ ~ 1 1
execute as @s at @s run playsound item.trident.riptide_3 player @a ~ ~ ~ 1 0
execute as @s at @s run effect give @e[distance=.1..7,type=!#first:untargetable,tag=!waterMagik] poison 5 1