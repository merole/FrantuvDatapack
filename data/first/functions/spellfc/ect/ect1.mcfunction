### as ect hitting nonowner
execute at @s as @e[tag=magik,scores={Mlvl = 1..2}] if score @e[tag=ect,tag=Hit,limit=1,sort=nearest] CastN = @s CastN run damage @e[type=!#first:untargetable,distance=..2.1,limit=1] 5 first:ect by @s from @s
execute at @s as @e[tag=magik,scores={Mlvl = 3..4}] if score @e[tag=ect,tag=Hit,limit=1,sort=nearest] CastN = @s CastN run damage @e[type=!#first:untargetable,distance=..2.1,limit=1] 7 first:ect by @s from @s
execute at @s as @e[tag=magik,scores={Mlvl = 5..6}] if score @e[tag=ect,tag=Hit,limit=1,sort=nearest] CastN = @s CastN run damage @e[type=!#first:untargetable,distance=..2.1,limit=1] 10 first:ect by @s from @s
execute at @s as @e[tag=magik,scores={Mlvl = 7..8}] if score @e[tag=ect,tag=Hit,limit=1,sort=nearest] CastN = @s CastN run damage @e[type=!#first:untargetable,distance=..2.1,limit=1] 12 first:ect by @s from @s
execute at @s as @e[tag=magik,scores={Mlvl = 9}] if score @e[tag=ect,tag=Hit,limit=1,sort=nearest] CastN = @s CastN run damage @e[type=!#first:untargetable,distance=..2.1,limit=1] 15 first:ect by @s from @s
execute at @s as @e[tag=magik,scores={Mlvl = 10..}] if score @e[tag=ect,tag=Hit,limit=1,sort=nearest] CastN = @s CastN run damage @e[type=!#first:untargetable,distance=..2.5,limit=1] 17 first:ect by @s from @s


execute at @s as @e[tag=magik] if score @e[tag=ect,tag=Hit,limit=1,sort=nearest] CastN = @s CastN as @e[tag=Hit,tag=ect] run function first:spellfc/ect/ect2