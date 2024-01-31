execute as @s at @s run tp @s ^ ^ ^.5 facing entity @e[sort=nearest,nbt={active_effects:[{id:"minecraft:glowing"}]},limit=1,type=!#first:untargetable,type=!item,distance=..50,tag=!skulkMagik] eyes
execute as @s at @s run tp @s ^ ^ ^.5 facing entity @e[sort=nearest,nbt={active_effects:[{id:"minecraft:darkness"}]},limit=1,type=!#first:untargetable,type=!item,distance=..50,tag=!skulkMagik] eyes
execute as @s at @s unless entity @e[sort=nearest,nbt={active_effects:[{id:"minecraft:darkness"}]}] unless entity @e[sort=nearest,nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect give @e[limit=1,sort=nearest,tag=!skulkMagik,type=!item,type=!#first:untargetable,distance=..50] glowing 3 0 true

execute as @s at @s if block ~ ~ ~ #occludes_vibration_signals run kill @s

execute as @s at @s if entity @e[type=!#first:untargetable,type=!item,tag=!skulkMagik,distance=..2.5] run function first:spellfc/mlvl10/skulkboom

execute as @s at @s run particle sonic_boom ~ ~ ~ 0 0 0 0 1 force @a