execute as @s[type=armor_stand,tag=enmagerUG] at @s run scoreboard players set @s SpellCD 10000
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["lvl10"],Duration:60,Radius:0}
execute as @s at @s run scoreboard players set @e[distance=..1,type=area_effect_cloud,tag=lvl10] SpellCD 60