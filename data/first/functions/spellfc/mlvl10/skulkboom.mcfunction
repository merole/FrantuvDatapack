execute as @e[type=!#first:untargetable,type=!item,tag=!skulkMagik,distance=..2.5] run playsound entity.warden.sonic_boom player @a ~ ~ ~ 1 1
execute as @e[type=!#first:untargetable,type=!item,tag=!skulkMagik,distance=..2.5] run particle sculk_charge 1 ~ ~ ~ 1 1 1 0 100 normal @a 
execute as @e[type=!#first:untargetable,type=!item,tag=!skulkMagik,distance=..2.5] run particle flash ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=!#first:untargetable,type=!item,tag=!skulkMagik,distance=..2.5] at @s run damage @s 10 first:skulk/skulktruodes by @p[tag=skulkMagik]
kill @s