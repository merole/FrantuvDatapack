scoreboard players set @s telatu 0
scoreboard players remove @s mana 10
scoreboard players set @s SpellCD 300

execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Radius:0,Duration:160,Tags:[SkulkTelatu]}
execute as @s at @s run scoreboard players set @e[distance=..1,type=area_effect_cloud,tag=SkulkTelatu] SpellCD 160
execute as @s at @s run playsound entity.warden.sonic_charge player @a ~ ~ ~ 1 1
execute as @s at @s run effect give @e[distance=..10,type=!#first:untargetable,tag=!skulkMagik] darkness 15 10 true