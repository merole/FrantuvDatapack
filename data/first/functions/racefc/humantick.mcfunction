##### as humans
execute as @s at @s run attribute @s generic.attack_damage base set 2
execute as @s at @s run attribute @s generic.armor base set 0
execute as @s at @s run attribute @s generic.movement_speed base set 0.1
execute as @s at @s run attribute @s generic.max_health base set 20
scoreboard players set @s Basemana 10

execute as @s[gamemode=!spectator] at @s run particle angry_villager ~ ~1 ~ 0.1 0.2 0.1 0 1 normal @a[tag=skulkin]