summon item ~ ~1 ~ {PickupDelay:10s,Item:{id:"minecraft:diamond_sword",Count:1b,tag:{ring:2,Unbreakable:1,CustomModelData:11102,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:0},{AttributeName:"generic.attack_speed",Amount:0}],display:{Name:'[{"text":"Mushu","italic":false,"color":"light_purple"}]',Lore:['[{"text":"Earth ring","italic":false,"color":"aqua"}]']},Enchantments:[{}],HideFlags:7}}}
item replace entity @p weapon.offhand with air
item replace entity @p weapon.mainhand with air
execute as @p at @s run playsound block.anvil.use player @a ~ ~ ~
execute as @p at @s run playsound block.conduit.activate player @a ~ ~ ~
execute as @e[type=armor_stand,distance=..10,tag=forgeEarth] at @s run particle block dirt ~ ~1 ~ 0.125 0.125 0.125 0 20 normal @a
scoreboard players set @e[type=armor_stand,tag=forgeCenter] SpellCD 2000