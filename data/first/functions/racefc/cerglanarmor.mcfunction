execute as @s at @s if biome ~ ~ ~ #spawns_snow_foxes run scoreboard players add @s cerglanArmor 1
execute as @s at @s if biome ~ ~ ~ #spawns_cold_variant_frogs run scoreboard players add @s cerglanArmor 2
execute as @s at @s if block ~ ~-1 ~ #first:cold run scoreboard players add @s cerglanArmor 1
execute as @s at @s if block ~ ~ ~ #first:cold run scoreboard players add @s cerglanArmor 1
execute as @s at @s if block ~ ~-1 ~ water if biome ~ ~ ~ #spawns_cold_variant_frogs run scoreboard players add @s cerglanArmor 1
execute as @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] at @s run scoreboard players add @s cerglanArmor 1

execute as @s at @s if dimension the_nether run scoreboard players remove @s cerglanArmor 1
execute as @s at @s if biome ~ ~ ~ #spawns_warm_variant_frogs run scoreboard players remove @s cerglanArmor 1
execute as @s at @s if biome ~ ~ ~ #snow_golem_melts run scoreboard players remove @s cerglanArmor 1
execute as @s at @s if block ~ ~ ~ #first:hot run scoreboard players remove @s cerglanArmor 1
execute as @s at @s if block ~ ~-1 ~ #first:hot run scoreboard players remove @s cerglanArmor 1

execute as @s[scores={cerglanArmor=..-1}] at @s run scoreboard players set @s cerglanArmor -1
execute as @s[scores={cerglanArmor=5..}] at @s run scoreboard players set @s cerglanArmor 5

execute as @s[gamemode=!spectator,nbt={active_effects:[{id:"minecraft:invisibility"}]}] at @s run function first:racefc/cerglaninvis
execute as @s[gamemode=!spectator,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] at @s if score @s cerglanArmor matches ..-1 run function first:racefc/cerglanarmorv
execute as @s[gamemode=!spectator,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] at @s if score @s cerglanArmor matches 0 run function first:racefc/cerglanarmor0
execute as @s[gamemode=!spectator,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] at @s if score @s cerglanArmor matches 1 run function first:racefc/cerglanarmor1
execute as @s[gamemode=!spectator,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] at @s if score @s cerglanArmor matches 2 run function first:racefc/cerglanarmor2
execute as @s[gamemode=!spectator,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] at @s if score @s cerglanArmor matches 3 run function first:racefc/cerglanarmor3
execute as @s[gamemode=!spectator,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] at @s if score @s cerglanArmor matches 4.. run function first:racefc/cerglanarmor4
execute as @s[gamemode=!spectator,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] at @s if score @s cerglanArmor matches 4.. run function first:racefc/cerglanarmor5

execute as @s at @s run scoreboard players set @s cerglanArmor 0