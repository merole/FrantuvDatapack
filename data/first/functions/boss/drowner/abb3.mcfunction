execute as @s at @s run summon area_effect_cloud ~ ~1 ~ {Duration:100,Radius:0,Tags:["drownerAbb3"]}
execute as @s at @s run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 1
scoreboard players set @s SpellCD 250