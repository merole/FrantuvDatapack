scoreboard players set @s eraspha 0
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 200

effect give @s strength 20 1 true
effect give @s haste 8 2 true
execute as @s at @s as @e[distance=.2..4,type=!#first:untargetable,tag=!SoulDog] run damage @s 4 wither by @p[tag=skulkMagik]
execute as @s at @s as @e[distance=.2..4,type=!#first:untargetable,tag=!SoulDog] at @s run summon evoker_fangs ~ ~ ~ {Warmup:3}
execute as @s at @s run execute as @e[type=evoker_fangs,nbt={Warmup:3}] at @s run data modify entity @s Owner set from entity @e[limit=1,sort=nearest,tag=witherMagik] UUID

execute as @s at @s run effect give @e[distance=.2..4,type=!#first:untargetable] blindness 20 1 true
execute as @s at @s run effect give @e[distance=.2..4,type=!#first:untargetable] wither 10 1 true

execute as @s at @s run playsound entity.wither.shoot player @a ~ ~ ~ 1
execute as @s at @s run playsound entity.wither_skeleton.ambient player @a ~ ~ ~ 1
execute as @s at @s run particle soul ~ ~.2 ~ 0.1 0.1 0.1 0 1 normal @a
execute as @s at @s run particle block soul_fire ~ ~.2 ~ 1.2 0.1 1.2 0 100 normal @a
execute as @s at @s as @e[distance=.2..4,type=!#first:untargetable] at @s run particle soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0 10 normal @a

##execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:[skulkeraspha],Duration:20,Radius:0}