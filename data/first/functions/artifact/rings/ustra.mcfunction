summon item ~ ~1 ~ {Item:{id:"minecraft:diamond_sword",Count:1b,tag:{ring:7,Unbreakable:1,CustomModelData:11107,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0},{AttributeName:"generic.attack_speed",Amount:0}],display:{Name:'[{"text":"Itasinav","italic":false,"color":"light_purple"}]',Lore:['[{"text":"Energy ring","italic":false,"color":"aqua"}]']},Enchantments:[{}],HideFlags:7}}}
item replace entity @p weapon.offhand with air
item replace entity @p weapon.mainhand with air
execute as @p at @s run playsound block.anvil.use player @a ~ ~ ~
execute as @p at @s run playsound block.conduit.activate player @a ~ ~ ~
execute as @e[type=armor_stand,distance=..10,tag=forgeCenter] at @s run particle dust 0.714 0.835 0.098 1 ~ ~1 ~ 0.125 0.125 0.125 0 20 normal @a
scoreboard players set @e[type=armor_stand,tag=forgeCenter] SpellCD 2000