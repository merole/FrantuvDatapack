execute as @s at @s run tp @s ~ ~ ~ facing entity @p
execute as @s at @s if entity @p[distance=7..] if block ^ ^ ^1 water if block ^ ^1 ^1 water run tp ^ ^ ^.1
execute as @s at @s if entity @p[distance=7..] if block ^ ^ ^1 water if block ^ ^1 ^1 water run function first:boss/drowner/abb2
execute as @s at @s run particle splash ^ ^1 ^-1 0.1 0.1 0.1 0 5 normal @a
execute as @s at @s run playsound entity.camel.dash hostile @a ~ ~ ~ 1 0
scoreboard players set @s SpellCD 300