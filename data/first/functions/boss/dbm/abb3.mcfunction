execute as @s at @s run summon skeleton ~ ~ ~ {Health:6,active_effects:[{id:"jump_boost",duration:1000000,amplifier:1,show_particles:0b},{id:"fire_resistance",duration:-1,amplifier:1,show_particles:0b}],HandItems:[{id:"bow",tag:{Enchantments:[{id:"flame",lvl:1},{id:"power",lvl:2},{id:"punch",lvl:1}]},Count:1},{id:"tipped_arrow",tag:{custom_potion_effects:[{id:"minecraft:levitation",amplifier:10,duration:10},{id:"minecraft:instant_damage",amplifier:1,duration:1}],CustomPotionColor:16777215},Count:1}],HandDropChances:[0f,0.2f],ArmorItems:[{id:"chainmail_boots",Count:1},{id:"chainmail_leggings",Count:1},{id:"chainmail_chestplate",Count:1},{id:"wither_skeleton_skull",Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:6d}]}
execute as @s at @s run playsound entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 1
execute as @s run scoreboard players set @s random1 -1