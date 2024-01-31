scoreboard players set @s tesden 0
scoreboard players remove @s mana 6
scoreboard players set @s SpellCD 150

execute as @s at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 0.9 1 1

execute as @s at @s run summon evoker_fangs ~-2 ~ ~ {Warmup:10,Rotation:[-90.0f,-9.0f]}
execute as @s at @s run summon evoker_fangs ~2 ~ ~ {Warmup:10,Rotation:[90.0f,90.0f]}
execute as @s at @s run summon evoker_fangs ~ ~ ~-2 {Warmup:10,Rotation:[0.0f,0.0f]}
execute as @s at @s run summon evoker_fangs ~ ~ ~2 {Warmup:10,Rotation:[0.0f,0.0f]}
execute as @s at @s run summon evoker_fangs ~1.5 ~ ~1.5 {Warmup:10,Rotation:[45.0f,45.0f]}
execute as @s at @s run summon evoker_fangs ~-1.5 ~ ~1.5 {Warmup:10,Rotation:[-135.0f,-135.0f]}
execute as @s at @s run summon evoker_fangs ~-1.5 ~ ~-1.5 {Warmup:10,Rotation:[135.0f,135.0f]}
execute as @s at @s run summon evoker_fangs ~1.5 ~ ~-1.5 {Warmup:10,Rotation:[45.0f,45.0f]}

execute as @s at @s run summon evoker_fangs ~-3 ~ ~ {Warmup:10,Rotation:[-90.0f,-9.0f]}
execute as @s at @s run summon evoker_fangs ~3 ~ ~ {Warmup:10,Rotation:[90.0f,90.0f]}
execute as @s at @s run summon evoker_fangs ~ ~ ~-3 {Warmup:10,Rotation:[0.0f,0.0f]}
execute as @s at @s run summon evoker_fangs ~ ~ ~3 {Warmup:10,Rotation:[0.0f,0.0f]}
execute as @s at @s run summon evoker_fangs ~2.5 ~ ~2.5 {Warmup:10,Rotation:[45.0f,45.0f]}
execute as @s at @s run summon evoker_fangs ~-2.5 ~ ~2.5 {Warmup:10,Rotation:[-135.0f,-135.0f]}
execute as @s at @s run summon evoker_fangs ~-2.5 ~ ~-2.5 {Warmup:10,Rotation:[135.0f,135.0f]}
execute as @s at @s run summon evoker_fangs ~2.5 ~ ~-2.5 {Warmup:10,Rotation:[45.0f,45.0f]}


execute as @s at @s run execute as @e[type=evoker_fangs,nbt={Warmup:10}] at @s run data modify entity @s Owner set from entity @e[limit=1,sort=nearest,tag=magik] UUID