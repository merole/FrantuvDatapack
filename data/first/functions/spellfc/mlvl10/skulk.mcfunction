scoreboard players remove @s mana 10
scoreboard players set @s SpellCD 300
scoreboard players set @s truodes 0

execute as @s at @s run playsound entity.warden.sonic_charge player @a ~ ~ ~ 1 1
execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Tags:["sonicCharge"],Radius:0,Duration:200}