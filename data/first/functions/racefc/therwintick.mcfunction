#### as therwin
execute as @s at @s run attribute @s generic.attack_damage base set 3
execute as @s at @s run attribute @s generic.armor base set 0
execute as @s at @s run attribute @s generic.movement_speed base set 0.1
execute as @s at @s run attribute @s generic.max_health base set 24
scoreboard players set @s Basemana 12

execute as @s at @s run effect give @s fire_resistance 1 0 true
execute as @s at @s run effect clear @s wither
execute as @s at @s if dimension the_nether run effect give @s speed 2 0 true

execute as @s at @s if dimension overworld unless biome ~ ~ ~ #first:hotaf run effect give @s slowness 2 0 true
execute as @s[predicate=first:in_water] at @s run damage @s 1 freeze
execute as @s at @s if block ~ ~-1 ~ #first:cold run damage @s 1 freeze
execute as @s at @s if block ~ ~ ~ #snow run setblock ~ ~ ~ air
execute as @s at @s if block ~ ~-1 ~ #first:cold run setblock ~ ~-1 ~ air
execute as @s at @s if block ~ ~-1 ~ #first:cold run playsound block.fire.extinguish ambient @a ~ ~ ~ 0.5 1
execute as @s at @s if block ~ ~-1 ~ #first:cold run particle cloud ~ ~ ~ 0.1 0.5 0.1 0.1 10 force @a

execute as @s[gamemode=!spectator] at @s run particle soul_fire_flame ~ ~1 ~ 0.1 0.2 0.1 0 1 normal @a[tag=skulkin]

execute as @s at @s store result score @s random3 at @s run random value -40..80
execute as @s at @s if score @s random3 matches 0 if entity @e[distance=.2..15,type=!#first:untargetable,type=!#first:weak] anchored eyes run particle soul ^ ^ ^1 0.1 0.1 0.1 0.1 1 force @s
execute as @s at @s if score @s random3 matches 0 if entity @e[distance=.2..15,type=!#first:untargetable,type=!#first:weak] run tellraw @s ["",{"text":"<You> There is ","color":"#A58E8E"},{"selector":"@e[distance=.1..15,limit=1,type=!#first:untargetable]","color":"#A58E8E"},{"text":" nearby","color":"#A58E8E"}]
execute as @s at @s if score @s random3 matches 0 if entity @e[distance=.2..15,type=!#first:untargetable,type=!#first:weak] run playsound particle.soul_escape player @s ~ ~ ~ 1 1

execute as @s at @s if score @s random3 matches 20 if entity @e[distance=.2..15,type=!#first:untargetable,tag=!SoulDog,nbt={active_effects:[{id:"minecraft:invisibility"}]}] anchored eyes run particle soul ^ ^ ^1 0.1 0.1 0.1 0.1 1 force @s
execute as @s at @s if score @s random3 matches 20 if entity @e[distance=.2..15,type=!#first:untargetable,tag=!SoulDog,nbt={active_effects:[{id:"minecraft:invisibility"}]}] run tellraw @s ["",{"text":"<You> There is someone hidden! ","color":"#A58E8E"}]
execute as @s at @s if score @s random3 matches 20 if entity @e[distance=.2..15,type=!#first:untargetable,tag=!SoulDog,nbt={active_effects:[{id:"minecraft:invisibility"}]}] run playsound entity.vex.charge player @s ~ ~ ~ 1 1

execute as @s at @s if score @s[scores={HealthPerc = ..40}] random3 matches 40 anchored eyes run particle soul ^ ^ ^1 0.1 0.1 0.1 0.1 1 force @s
execute as @s at @s if score @s[scores={HealthPerc = ..40}] random3 matches 40 run tellraw @s ["",{"text":"<You> We are hurt! Do something! ","color":"#A58E8E"}]
execute as @s at @s if score @s[scores={HealthPerc = ..40}] random3 matches 40 run playsound entity.vex.hurt player @s ~ ~ ~ 1 1

execute store result score @s playerCount if entity @a
execute as @s at @s if score @s[scores={playerCount = 6..,manaTimer=666}] random3 matches 60 anchored eyes run particle soul ^ ^ ^1 0.1 0.1 0.1 0.1 1 force @s
execute as @s at @s if score @s[scores={playerCount = 6..,manaTimer=666}] random3 matches 60 run tellraw @s ["",{"text":"<You> We should kill someone! ","color":"#A58E8E"}]
execute as @s at @s if score @s[scores={playerCount = 6..,manaTimer=666}] random3 matches 60 run playsound entity.allay.ambient_with_item player @s ~ ~ ~ 1 1

execute as @s at @s if predicate first:light_3less run effect give @s invisibility 2 0 true


scoreboard players set @s random3 -40