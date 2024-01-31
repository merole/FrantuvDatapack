execute as @s at @s run damage @p 4 magic by @e[sort=nearest,limit=1,type=drowned,tag=drowner]
execute as @s at @s run particle sweep_attack ~ ~ ~ 0 0 0 0 1 normal @a
execute as @s at @s run playsound entity.generic.wind_burst hostile @a
kill @s