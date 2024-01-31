execute as @s at @s run summon area_effect_cloud ~1 ~-2 ~ {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~-1 ~-2 ~ {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~1 ~-2 ~-1 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~-1 ~-2 ~-1 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~ ~-2 ~-1 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~-1 ~-2 ~1 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~1 ~-2 ~1 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~ ~-2 ~1 {Radius:0,Duration:1,Tags:["skulkCheck"]}

execute as @s at @s run summon area_effect_cloud ~2 ~-2 ~ {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~-2 ~-2 ~ {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~2 ~-2 ~-1 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~-2 ~-2 ~-1 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~ ~-2 ~-2 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~-2 ~-2 ~1 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~2 ~-2 ~1 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~ ~-2 ~2 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~1 ~-2 ~2 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~1 ~-2 ~-2 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~-1 ~-2 ~-2 {Radius:0,Duration:1,Tags:["skulkCheck"]}
execute as @s at @s run summon area_effect_cloud ~-1 ~-2 ~2 {Radius:0,Duration:1,Tags:["skulkCheck"]}

execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s if block ~ ~ ~ #first:sculk run scoreboard players add @p[tag=skulkin,distance=..4] SculkCount 1

execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s run tp @s ~ ~1 ~
execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s if block ~ ~ ~ #first:sculk run scoreboard players add @p[tag=skulkin,distance=..4] SculkCount 1

execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s run tp @s ~ ~1 ~
execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s if block ~ ~ ~ #first:sculk run scoreboard players add @p[tag=skulkin,distance=..4] SculkCount 1

execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s run tp @s ~ ~1 ~
execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s if block ~ ~ ~ #first:sculk run scoreboard players add @p[tag=skulkin,distance=..4] SculkCount 1

execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s run tp @s ~ ~1 ~
execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s if block ~ ~ ~ #first:sculk run scoreboard players add @p[tag=skulkin,distance=..4] SculkCount 1

execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s run tp @s ~ ~1 ~
execute as @e[tag=skulkCheck,type=area_effect_cloud] at @s if block ~ ~ ~ #first:sculk run scoreboard players add @p[tag=skulkin,distance=..4] SculkCount 1

execute as @s[scores= {SculkCount = 3..}] at @s run particle sculk_charge_pop ~ ~ ~ 1 1 1 0 1 normal @a
execute as @s[scores= {SculkCount = 13..}] at @s run particle sculk_charge_pop ~ ~ ~ 1 1 1 0 1 normal @a
execute as @s[scores= {SculkCount = 23..}] at @s run particle sculk_charge_pop ~ ~ ~ 1 1 1 0 1 normal @a

execute as @s[gamemode=!spectator] at @s unless biome ~ ~ ~ deep_dark unless entity @s[nbt={Inventory:[{Slot:103b,tag:{eyesSkulk:1}}]}] if score @s SculkCount matches ..0 run effect give @s blindness 2 0 true
execute as @s[gamemode=!spectator] at @s if score @s SculkCount matches 0.. run effect give @s night_vision 15 0 true
execute as @s[gamemode=!spectator] at @s if score @s SculkCount matches 10.. run effect give @a[distance=.1..20,tag=!skulkin,predicate=first:skulked] darkness 10 0 true
execute as @s[gamemode=!spectator] at @s if score @s SculkCount matches 20.. run effect give @e[type=!#first:untargetable,distance=.1..20,tag=!skulkin,predicate=first:skulked] glowing 10 0 true
execute as @s[gamemode=!spectator,scores={hunger=..19,random3=5}] at @s if score @s SculkCount matches 30.. run effect give @s saturation 1 0 true
execute as @s[gamemode=!spectator] at @s if score @s SculkCount matches 40.. run effect give @e[type=!#first:untargetable,distance=.1..20,tag=!skulkin,predicate=first:skulked] slowness 10 0 true
execute as @s[gamemode=!spectator] at @s if score @s SculkCount matches 50.. run effect give @e[type=!#first:untargetable,distance=.1..20,tag=!skulkin,predicate=first:skulked] weakness 1 0 true
execute as @s[gamemode=!spectator,scores={random3=8}] at @s if score @s SculkCount matches 60.. run effect give @s regeneration 5 0 true
execute as @s[gamemode=!spectator,scores={random3=8}] at @s if score @s SculkCount matches 60.. run playsound entity.warden.heartbeat player @a ~ ~ ~ 0.4 0
execute as @s[gamemode=!spectator,scores={random3=8}] at @s if score @s SculkCount matches 60.. anchored eyes run particle heart ^.7 ^-.7 ^0.7 0 0 0 0 1 normal @s


execute as @s[predicate=first:sneaking,level=3..,scores={random3 = 19,SculkCount = 1..}] run function first:racefc/skulkinxp

scoreboard players add @s random3 1
execute as @s at @s if score @s random3 matches 31.. run scoreboard players set @s random3 -1
scoreboard players set @s SculkCount 0