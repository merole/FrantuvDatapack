#### as chorusians
execute as @s at @s run attribute @s generic.attack_damage base set 2
execute as @s at @s run attribute @s generic.armor base set 0
execute as @s at @s run attribute @s generic.movement_speed base set 0.1
execute as @s at @s run attribute @s generic.max_health base set 20
scoreboard players set @s Basemana 15
effect clear @s unluck 
execute as @s[predicate=first:in_water] at @s run damage @s 1 magic
execute as @s at @s if predicate first:rain if predicate first:check_sky unless biome ~ ~ ~ #spawns_warm_variant_frogs run damage @s 1 magic
execute as @s[gamemode=!spectator,predicate=first:in_water] at @s run particle white_ash ~ ~ ~ 0.1 0 0.1 0 10 normal @a
execute as @s at @s if predicate first:sneaks run effect give @s slow_falling 2 0 true
execute as @s[gamemode=!spectator] at @s if predicate first:sneaks run particle end_rod ~ ~ ~ 0.1 0 0.1 0 1 normal @a
execute as @s[gamemode=!spectator] at @s run particle portal ~ ~1 ~ 0.1 0.2 0.1 0 1 normal @a[tag=skulkin]