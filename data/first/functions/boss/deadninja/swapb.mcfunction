execute as @s at @s run item replace entity @s weapon.mainhand with bow{ricochet:1,display:{Name:'[{"text":"Nature bow","italic":false}]',Lore:['[{"text":"Ricochet","italic":false,"color":"gray"}]']},Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:3}]}
execute as @s at @s run item replace entity @s weapon.offhand with tipped_arrow{CustomPotionColor:32000,custom_potion_effects:[{id:nausea,duration:200}]}
data merge entity @s {NoAI:1b}
data merge entity @s {NoAI:0b}