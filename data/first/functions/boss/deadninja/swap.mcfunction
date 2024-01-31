execute as @s at @s run item replace entity @s weapon.mainhand with wooden_sword{display:{Name:'[{"text":"Nature sword","italic":false}]'},Enchantments:[{id:"knockback",lvl:4},{id:"mending",lvl:1},{id:"sharpness",lvl:4},{id:"sweeping",lvl:4},{id:"unbreaking",lvl:5}]} 1
execute as @s at @s run item replace entity @s weapon.offhand with air 1
data merge entity @s {NoAI:1b}
data merge entity @s {NoAI:0b}