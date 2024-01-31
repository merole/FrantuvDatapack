execute as @s[predicate=first:in_water] at @s run damage @e[sort=nearest,limit=1,tag=!ustraMagik,type=!#first:untargetable] 18 first:ustra/ustratruodes by @p[tag=ustraMagik]
execute as @s at @s run damage @e[sort=nearest,limit=1,tag=!ustraMagik,type=!#first:untargetable] 12 first:ustra/ustratruodes by @p[tag=ustraMagik]
execute as @s at @s run particle electric_spark ~ ~ ~ 0.625 0.625 0.625 1 60 force @a
execute as @s at @s run playsound item.axe.scrape player @a ~ ~ ~ 1 2