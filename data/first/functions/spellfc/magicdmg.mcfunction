#### as Magic Projectile
execute as @s at @s unless score @s CastN = @e[distance=..1.5,limit=1] CastN run function first:spellfc/ect/ect1
execute as @s at @s unless score @s CastN = @e[distance=..1.5,limit=1] CastN run tag @s add Hit
#### score @s CastN = @e[distance=..1,limit=1] CastN