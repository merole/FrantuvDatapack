particle soul ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a
playsound entity.vex.ambient player @a ~ ~ ~ 0.02 0
attribute @s generic.max_health base set 3.0

execute as @s at @s if score @s SpellCD matches ..2 run data modify entity @s Owner set from entity @s UUID
execute as @s at @s if score @s SpellCD matches ..1 run particle flash ~ ~ ~ 0 0 0 1 1 force @a
execute as @s at @s if score @s SpellCD matches ..1 run playsound block.trial_spawner.close_shutter neutral @a ~ ~ ~ 1 0
execute as @s at @s if score @s SpellCD matches ..1 run damage @s 50526150251 outside_border
