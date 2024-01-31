#### as skulkins
execute as @s at @s run attribute @s generic.attack_damage base set 6
execute as @s at @s run attribute @s generic.armor base set 4
execute as @s at @s run attribute @s generic.movement_speed base set 0.08
execute as @s at @s run attribute @s generic.max_health base set 40
execute as @s at @s run scoreboard players set @s Maxmana 2

execute as @s at @s run function first:racefc/skulkincount
effect clear @s darkness

execute as @s at @s run scoreboard players add @a[distance=..15,tag=!skulkin] manaTimer 2

execute as @s[gamemode=!spectator] at @s run particle sculk_soul ~ ~1 ~ 0.1 0.2 0.1 0 1 normal @a[tag=skulkin,distance=.1..]