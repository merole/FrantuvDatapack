#### as xuluaks
execute as @s at @s run attribute @s generic.attack_damage base set 1.8
execute as @s at @s run attribute @s generic.armor base set 0
execute as @s at @s run attribute @s generic.movement_speed base set 0.12
execute as @s at @s run attribute @s generic.max_health base set 16
scoreboard players set @s Basemana 20
effect clear @s slowness


execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] run damage @s 1 magic
execute as @s at @s if entity @s[nbt={SelectedItem:{id:"minecraft:ender_pearl"}}] run damage @s 1 magic

execute as @s at @s if block ~ ~-1 ~ #minecraft:mineable/hoe run effect give @s jump_boost 2 1 true

execute as @s[gamemode=!spectator] at @s if dimension the_end run effect give @s unluck 1 0 true
execute as @s[gamemode=!spectator] at @s if dimension the_end run effect give @s weakness 1 0 true

execute as @s[gamemode=!spectator] at @s run particle enchant ~ ~1 ~ 0.1 0.2 0.1 0 1 normal @a[tag=skulkin]