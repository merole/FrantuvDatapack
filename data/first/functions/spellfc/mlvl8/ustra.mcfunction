scoreboard players set @s eraspha 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 200

effect give @s regeneration 2 0 true
effect give @s saturation 2 0 true
execute as @s at @s as @e[distance=.2..8,type=!#first:untargetable] run damage @s 20 first:ustra/ustraeraspha by @p[tag=ustraMagik]

execute as @s at @s run effect give @e[distance=.2..8,type=!#first:untargetable] hunger 2 1 true


execute as @s at @s run playsound item.trident.thunder player @a ~ ~ ~ 1
execute as @s at @s run playsound entity.generic.explode player @a ~ ~ ~ 1
execute as @s at @s run particle dust 0.843 0.843 0.09 1 ~ ~.2 ~ 1 0.1 1 0 1 normal @a
execute as @s at @s as @e[distance=.2..11,type=!#first:untargetable] at @s run particle electric_spark ~ ~1 ~ 0.2 0.2 0.2 0 10 normal @a

##execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:[skulkeraspha],Duration:20,Radius:0}