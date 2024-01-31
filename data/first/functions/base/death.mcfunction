execute as @s[tag=therwin] at @s summon vex summon vex run playsound entity.wither_skeleton.death player @a ~ ~ ~ 1
execute as @s[tag=cerglan] at @s run playsound entity.player.hurt_freeze player @a ~ ~ ~ 1
execute as @s[tag=skulkin] at @s run playsound entity.warden.death player @a ~ ~ ~ 1
execute as @s[tag=skulkin] at @s run summon area_effect_cloud ~ ~ ~ {effects:[{id:"darkness",duration:100}],Radius:8,Duration:100,RadiusPerTick:-.5f,Particle:sculk_soul}
execute as @s[tag=chorusian] at @s run playsound entity.shulker.death player @a ~ ~ ~ 1


scoreboard players set @s mana 2
scoreboard players set @s Death 0
scoreboard players set @s OutOfWater 1000
scoreboard players set @s SpellCD 100