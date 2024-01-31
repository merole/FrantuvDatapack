##### as qualaks
execute as @s at @s run attribute @s generic.attack_damage base set 1.5
execute as @s at @s run attribute @s generic.armor base set 0
execute as @s at @s run attribute @s generic.movement_speed base set 0.1
execute as @s at @s run attribute @s generic.max_health base set 20
scoreboard players set @s Basemana 10



execute as @s[predicate=first:in_water] at @s run effect give @s conduit_power 2 0 true
execute as @s[predicate=first:in_water] at @s run effect give @s dolphins_grace 2 0 true



execute as @s at @s run effect clear @s poison
execute as @s at @s run effect clear @s nausea

execute as @s[gamemode=!spectator] at @s[predicate=!first:in_water] if biome ~ ~ ~ #snow_golem_melts run scoreboard players add @s OutOfWater 1
execute as @s[gamemode=!spectator] at @s if dimension the_nether run scoreboard players add @s OutOfWater 1

execute as @s[scores={DriedKelpEaten = 1..}] at @s run effect give @s saturation 1 1 true
execute as @s[scores={DriedKelpEaten = 1..}] at @s run scoreboard players set @s DriedKelpEaten 0
execute as @s[scores={DriedKelpEaten = 1..}] at @s run scoreboard players remove @s OutOfWater 10

execute as @s at @s if score @s OutOfWater matches 2800 run tellraw @s {"text": "You are starting to feel dry!","color": "#00cfff"}
execute as @s at @s if score @s OutOfWater matches 2800 run playsound entity.villager.no player @s ~ ~ ~ .5 1
execute as @s at @s if score @s OutOfWater matches 2800.. run effect give @s weakness 1 0 true
execute as @s at @s if score @s OutOfWater matches 5000 run tellraw @s {"text": "You are starting to feel VERY dry!","color": "#ffcc00"}
execute as @s at @s if score @s OutOfWater matches 5000 run playsound entity.villager.no player @s ~ ~ ~ .5 1
execute as @s at @s if score @s OutOfWater matches 5000.. run effect give @s slowness 1 0 true
execute as @s at @s if score @s OutOfWater matches 6000 run tellraw @s {"text": "You are starting to feel PAINFULLY dry!","color": "#ff0000"}
execute as @s at @s if score @s OutOfWater matches 6000 run playsound entity.villager.no player @s ~ ~ ~ 1 1
execute as @s at @s if score @s OutOfWater matches 6000.. run damage @s 0.5 dry_out

execute as @s[gamemode=!spectator] at @s run particle falling_water ~ ~1 ~ 0.1 0.2 0.1 0 1 normal @a[tag=skulkin]