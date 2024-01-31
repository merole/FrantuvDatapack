#### as renwiks
execute as @s at @s run attribute @s generic.attack_damage base set 2.2
execute as @s at @s run attribute @s generic.armor base set 0
execute as @s at @s run attribute @s generic.movement_speed base set 0.1
execute as @s at @s run attribute @s generic.max_health base set 22
scoreboard players set @s Basemana 8

execute as @s at @s run effect clear @s weakness

execute as @s[predicate=first:renwik_eat,scores={hunger=..19}] at @s run scoreboard players add @s random3 1
execute as @s[predicate=!first:renwik_eat] at @s run scoreboard players set @s random3 -1
execute as @s[predicate=first:renwik_eat,scores={random3 = 5}] at @s run playsound entity.generic.eat player @a ~ ~ ~
execute as @s[predicate=first:renwik_eat,scores={random3 = 10}] at @s run playsound entity.generic.eat player @a ~ ~ ~
execute as @s[predicate=first:renwik_eat,scores={random3 = 15}] at @s run playsound entity.generic.eat player @a ~ ~ ~
execute as @s[predicate=first:renwik_eat,scores={random3 = 20..}] at @s run function first:racefc/renwikeat

execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"},{Slot:101b,id:"minecraft:golden_leggings"},{Slot:102b,id:"minecraft:golden_chestplate"},{Slot:103b,id:"minecraft:golden_helmet"}]}] run effect give @s fire_resistance 1 0 true
execute as @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"},{Slot:101b,id:"minecraft:golden_leggings"},{Slot:102b,id:"minecraft:golden_chestplate"},{Slot:103b,id:"minecraft:golden_helmet"}]}] run effect give @s resistance 1 1 true
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] at @s run effect give @s strength 1 0 true
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] at @s run effect give @s luck 1 0 true
execute as @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] at @s run effect give @s haste 1 0 true

execute as @s at @s if biome ~ ~ ~ #spawns_cold_variant_frogs run effect give @s slowness 1 1 true
execute as @s at @s if block ~ ~1.3 ~ #first:water run effect give @s blindness 10 0 true

execute as @s[gamemode=!spectator] at @s run particle ash ~ ~1 ~ 0.1 0.2 0.1 0 1 normal @a[tag=skulkin]

execute as @s at @s anchored eyes unless block ^ ^ ^.4 #first:liquids if predicate first:climb run effect give @s levitation 1 1 true
execute as @s at @s anchored eyes unless block ^ ^ ^.4 #first:liquids if predicate first:climb run effect give @s slow_falling 1 0 true
execute as @s at @s anchored eyes unless block ^ ^ ^.4 #first:liquids if predicate first:climb if score @s random3 matches 1 run playsound block.ladder.step player @a ~ ~ ~ 0.9 1
execute as @s at @s anchored eyes unless block ^ ^ ^.4 #first:liquids if predicate first:climb run scoreboard players add @s random3 1
execute as @s at @s anchored eyes unless block ^ ^ ^.4 #first:liquids if predicate first:climb if score @s random3 matches 20.. run scoreboard players set @s random3 0