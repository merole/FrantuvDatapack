execute as @s at @s anchored eyes run summon small_fireball ~ ~2 ~1 {power:[0d,-0.2d,1d],Motion:[0d,-0.2d,1d]}
execute as @s at @s run data modify entity @e[type=small_fireball,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @s at @s anchored eyes run summon small_fireball ~ ~2 ~-1 {Motion:[0d,-0.2d,-1d],power:[0d,-0.2d,-1d]}
execute as @s at @s run data modify entity @e[type=small_fireball,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @s at @s anchored eyes run summon small_fireball ~1 ~2 ~ {Motion:[1d,-0.2d,0d],power:[1d,-0.2d,0d]}
execute as @s at @s run data modify entity @e[type=small_fireball,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @s at @s anchored eyes run summon small_fireball ~-1 ~2 ~ {Motion:[-1d,-0.2d,0d],power:[-1d,-0.2d,0d]}
execute as @s at @s run data modify entity @e[type=small_fireball,sort=nearest,limit=1] Owner set from entity @s UUID

execute as @s at @s run playsound entity.wither.shoot block @a ~ ~ ~ 1
execute as @s run scoreboard players set @s random1 -1