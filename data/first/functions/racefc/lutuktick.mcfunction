#### as lutuks
execute as @s at @s run attribute @s generic.attack_damage base set 3
execute as @s at @s run attribute @s generic.armor base set 2
execute as @s at @s run attribute @s generic.movement_speed base set 0.1
execute as @s at @s run attribute @s generic.max_health base set 20
scoreboard players set @s Basemana 10

effect clear @s mining_fatigue

execute as @s[gamemode=!spectator] at @s if predicate first:y_higher110 run effect give @s nausea 5 0 true
execute as @s[gamemode=!spectator] at @s if predicate first:lutuks_blind run effect give @s blindness 2 0 true
execute as @s run effect give @s night_vision 15 0 true
execute as @s run effect give @s haste 1 1 true
execute as @s[gamemode=!spectator] at @s if block ~ ~1 ~ #first:unsuffocable run setblock ~ ~1 ~ air destroy

stopsound @s ambient ambient.cave 
execute as @s at @s run effect clear @s hunger
execute as @s[gamemode=!spectator] at @s run particle dust 0.373 0.173 0.173 0.1 ~ ~1 ~ 0.1 0.2 0.1 0 1 normal @a[tag=skulkin]

##execute as @s at @e[distance=..20,tag=!lutuk,type=#first:dangerous] run playsound blcok neutral @s ~ ~ ~ 0.2 1

execute as @s[predicate=first:lutuk_eat,scores={hunger=..19}] at @s run scoreboard players add @s random3 1
execute as @s[predicate=!first:lutuk_eat] at @s run scoreboard players set @s random3 -1
execute as @s[predicate=first:lutuk_eat,scores={random3 = 5}] at @s run playsound entity.generic.eat player @a ~ ~ ~
execute as @s[predicate=first:lutuk_eat,scores={random3 = 10}] at @s run playsound entity.generic.eat player @a ~ ~ ~
execute as @s[predicate=first:lutuk_eat,scores={random3 = 15}] at @s run playsound entity.generic.eat player @a ~ ~ ~
execute as @s[predicate=first:lutuk_eat,scores={random3 = 20..}] at @s run function first:racefc/lutukeat