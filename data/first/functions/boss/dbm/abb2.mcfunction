execute as @s at @s anchored eyes run summon armor_stand ~ ~2 ~ {Marker:1b,Glowing:1b,NoGravity:1b,Tags:["Shooter"],Invisible:0b}
execute as @s at @s anchored eyes run data modify entity @e[tag=Shooter,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute as @e[sort=nearest,limit=1,tag=Shooter] at @s run function first:boss/dbm/abb2b
execute as @s at @s run playsound entity.illusioner.cast_spell hostile @a ~ ~ ~ 1
execute as @s run scoreboard players set @s random1 -1