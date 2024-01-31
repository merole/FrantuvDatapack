scoreboard players set @s eraspha 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 200

effect give @s strength 20 1 true
effect give @s haste 8 2 true
execute as @s at @s as @e[distance=.2..4,type=!#first:untargetable] run damage @s 5 first:skulk/skulkeraspha by @p[tag=skulkMagik]

execute as @s at @s run effect give @e[distance=.2..21,type=!#first:untargetable] darkness 20 0 true
execute as @s at @s run effect give @e[distance=.2..21,type=!#first:untargetable] weakness 20 1 true

execute as @s at @s run playsound ambient.cave player @a ~ ~ ~ 1
execute as @s at @s run playsound entity.warden.heartbeat player @a ~ ~ ~ 1
execute as @s at @s run particle sonic_boom ~ ~.2 ~ 0.1 0.1 0.1 0 1 normal @a
execute as @s at @s run particle block sculk ~ ~.2 ~ 1.2 0.1 1.2 0 100 normal @a
execute as @s at @s as @e[distance=.2..11,type=!#first:untargetable] at @s run particle sculk_charge_pop ~ ~1 ~ 0.2 0.2 0.2 0 10 normal @a

##execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:[skulkeraspha],Duration:20,Radius:0}