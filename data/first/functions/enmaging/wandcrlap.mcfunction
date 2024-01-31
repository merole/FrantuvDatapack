execute as @s at @s run particle flash ~ ~ ~ 0 0 0 1 1 force @a
execute as @s at @s run scoreboard players remove @p[tag=magik,sort=nearest,limit=1] mana 10
execute as @s at @s run playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1
execute as @s at @s run kill @e[type=item,nbt={Item:{tag:{MagicGem:5}}},distance=..2,limit=1]
execute as @s at @s run give @p[tag=magik,sort=nearest,limit=1] warped_fungus_on_a_stick{CustomModelData:66602,Unbreakable:1b,Wand:1,display:{Name:'{"text": "Lapis Staff","color":"yellow","italic":false}'}} 1
execute as @s at @s run kill @s