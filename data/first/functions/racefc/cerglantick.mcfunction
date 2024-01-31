##### as cerglans
execute as @s at @s run attribute @s generic.attack_damage base set 2
execute as @s at @s run attribute @s generic.armor base set 0
execute as @s at @s run attribute @s generic.movement_speed base set 0.1
execute as @s at @s run attribute @s generic.max_health base set 22
scoreboard players set @s Basemana 12



execute as @s at @s run function first:racefc/cerglanarmor

execute as @s at @s run effect clear @s slowness

execute as @s[nbt=!{active_effects:[{id:"minecraft:fire_resistance"}]}] at @s if predicate first:on_fire run damage @s 3 on_fire

execute as @s[gamemode=!spectator] at @s run particle snowflake ~ ~1 ~ 0.1 0.2 0.1 0 1 normal @a[tag=skulkin]
