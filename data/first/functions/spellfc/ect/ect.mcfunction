#### as ect sending magik
execute as @s at @s anchored eyes positioned ~ ~1.25 ~ run summon area_effect_cloud ^ ^ ^ {Radius:0,Duration:1000,Tags:["moveB","ect","MP"]}
execute as @s at @s run execute as @e[tag=MP,limit=1,sort=nearest] at @s run data modify entity @s Rotation set from entity @p[tag=magik] Rotation
execute as @s at @s run execute as @e[tag=MP,limit=1,sort=nearest] at @s anchored eyes run scoreboard players operation @s CastN = @e[tag=magik,sort=nearest,limit=1] CastN
scoreboard players set @s ect 0
scoreboard players remove @s mana 2
scoreboard players set @s SpellCD 15