execute as @s at @s run give @p[tag=magik,sort=nearest,limit=1] snowball{CustomModelData:22201,manaBurst:1,display:{Name:'{"text": "Scroll of Energy","color":"yellow","italic":false}'}} 1
execute as @s at @s run particle glow_squid_ink ~ ~ ~ 0 0 0 1 1 force @a
execute as @s at @s run scoreboard players remove @p[tag=magik,sort=nearest,limit=1] mana 7
execute as @s at @s run playsound entity.villager.work_librarian player @a ~ ~ ~ 1 1
execute as @s at @s run kill @e[type=item,nbt={Item:{id:"minecraft:glow_ink_sac"}},distance=..2,limit=1]
execute as @s at @s run kill @s