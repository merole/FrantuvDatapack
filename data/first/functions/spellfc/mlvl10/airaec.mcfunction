execute as @s at @s run tp @s ^ ^ ^.5 ~ ~
execute as @s at @s run particle cloud ~ ~ ~ 0 0 0 0 1 force @a
execute as @s at @s run particle sweep_attack ~ ~ ~ 0 0 0 0 1 force @a
execute as @s at @s if score @s SpellCD matches ..90 run data modify entity @s Rotation set from entity @p[tag=airMagik,scores={SpellCD = 300..390}] Rotation

execute as @s at @s as @e[distance=..3,type=!#first:untargetable,tag=!airMagik] run damage @s 10 first:air/airtruodes by @p[tag=airMagik]
execute as @s at @s as @e[distance=..3,type=!#first:untargetable,tag=!airMagik] run effect give @s levitation 1 10 true

execute as @s at @s unless block ~ ~ ~ #first:liquids unless block ~ ~ ~ #first:fragile run particle gust_emitter ~ ~ ~ 0 0 0 0 1 normal @a
execute as @s at @s unless block ~ ~ ~ #first:liquids unless block ~ ~ ~ #first:fragile run playsound entity.generic.wind_burst player @a ~ ~ ~ 5 1
execute as @s at @s unless block ~ ~ ~ #first:liquids unless block ~ ~ ~ #first:fragile run kill @s
execute as @s at @s if block ~ ~ ~ water unless block ~ ~ ~ #first:fragile run particle gust_emitter ~ ~ ~ 0 0 0 0 1 normal @a
execute as @s at @s if block ~ ~ ~ water unless block ~ ~ ~ #first:fragile run playsound entity.generic.wind_burst player @a ~ ~ ~ 5 1
execute as @s at @s if block ~ ~ ~ water unless block ~ ~ ~ #first:fragile run kill @s
execute as @s at @s if block ~ ~ ~ lava unless block ~ ~ ~ #first:fragile run particle gust_emitter ~ ~ ~ 0 0 0 0 1 normal @a
execute as @s at @s if block ~ ~ ~ lava unless block ~ ~ ~ #first:fragile run playsound entity.generic.wind_burst player @a ~ ~ ~ 5 1
execute as @s at @s if block ~ ~ ~ lava unless block ~ ~ ~ #first:fragile run kill @s


execute as @s at @s if block ~ ~ ~ #first:fragile run setblock ~ ~ ~ air destroy
