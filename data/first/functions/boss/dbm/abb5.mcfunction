execute as @s at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["SFP"],FallHurtAmount:2f,HurtEntities:1b,Time:1,Motion:[0.5d,0.5d,-0.5d],BlockState:{Name:"minecraft:soul_fire"}}
execute as @s at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["SFP"],FallHurtAmount:2f,HurtEntities:1b,Time:1,Motion:[-0.5d,0.5d,-0.5d],BlockState:{Name:"minecraft:soul_fire"}}
execute as @s at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["SFP"],FallHurtAmount:2f,HurtEntities:1b,Time:1,Motion:[-0.5d,0.5d,0.5d],BlockState:{Name:"minecraft:soul_fire"}}
execute as @s at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["SFP"],FallHurtAmount:2f,HurtEntities:1b,Time:1,Motion:[0.5d,0.5d,0.5d],BlockState:{Name:"minecraft:soul_fire"}}
execute as @s at @s run playsound block.dispenser.launch hostile @a ~ ~ ~ 0.1 1
execute as @s at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1
execute as @s at @s run particle soul_fire_flame ~ ~1 ~ 0 1 0 0 30 normal @a
execute as @s at @s run particle flame ~ ~1 ~ 0 1 0 0 30 normal @a

##execute as @s at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["FP"],FallHurtAmount:2f,HurtEntities:1b,Time:1,Motion:[0d,0.5d,-0.5d],BlockState:{Name:"minecraft:fire"}}
##execute as @s at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["FP"],FallHurtAmount:2f,HurtEntities:1b,Time:1,Motion:[-0.5d,0.5d,0d],BlockState:{Name:"minecraft:fire"}}
##execute as @s at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["FP"],FallHurtAmount:2f,HurtEntities:1b,Time:1,Motion:[0d,0.5d,0.5d],BlockState:{Name:"minecraft:fire"}}
##execute as @s at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["FP"],FallHurtAmount:2f,HurtEntities:1b,Time:1,Motion:[0.5d,0.5d,0d],BlockState:{Name:"minecraft:fire"}}
##execute as @s run scoreboard players set @s random1 -1