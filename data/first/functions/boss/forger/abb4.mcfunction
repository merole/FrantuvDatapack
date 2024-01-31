execute as @s at @s at @e[distance=..10,type=!#first:untargetable,tag=!ForgerBrain,tag=!forger] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
execute as @s at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 2 0
execute as @s at @s run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 0
scoreboard players set @s SpellCD 80
execute as @s at @s run effect give @e[distance=..10,type=!#first:untargetable,tag=!ForgerBrain,tag=!forger] levitation 1 20 true