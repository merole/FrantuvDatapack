#### as chorusian casting liosa_end
scoreboard players set @s liosa_end 0
scoreboard players set @s liosa_world 0
scoreboard players set @s liosa_nether 0 
scoreboard players remove @s mana 5
scoreboard players set @s SpellCD 200

execute as @s at @s run playsound entity.enderman.teleport block @a ~ ~ ~ 2.5 1
execute as @s at @s run particle portal ~ ~ ~ 0.5 1 0.5 0 100 force @a
execute as @s at @s in the_end run spreadplayers ~ ~ 5 5 false @s
execute as @s at @s run spreadplayers ~ ~ 100 1000 true @s
execute as @s at @s run playsound entity.enderman.teleport block @a ~ ~ ~ 2.5 1
execute as @s at @s run particle reverse_portal ~ ~ ~ 0.5 1 0.5 0 100 force @a