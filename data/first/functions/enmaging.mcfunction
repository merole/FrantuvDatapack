execute if entity @s[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",tag:{MagicGem:5}}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/wandcreme
execute if entity @s[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lapis_lazuli",tag:{MagicGem:5}}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/wandcrlap
execute if entity @s[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:quartz",tag:{MagicGem:5}}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/wandcrqua

execute if entity @s[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:paper"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glow_ink_sac"}}] if block ~ ~-1 ~ lectern run function first:enmaging/scrolls/energy
execute if entity @s[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:paper"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:golden_apple"}}] if block ~ ~-1 ~ lectern run function first:enmaging/scrolls/hype

execute if entity @s[tag=magik,scores={Mlvl= 1}] at @s as @e[type=item,nbt={Item:{id:"minecraft:milk_bucket"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glistering_melon_slice"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/nasa
execute if entity @s[tag=magik,scores={Mlvl= 2}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{rusmu:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:shield"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/rusmu
execute if entity @s[tag=magik,scores={Mlvl= 3}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{tesden:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:totem_of_undying"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/tesden
execute if entity @s[tag=magik,scores={Mlvl= 4}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{geresu:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/geresu
execute if entity @s[tag=magik,scores={Mlvl= 5}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{ptoca:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:end_crystal"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/ptoca
execute if entity @s[tag=magik,scores={Mlvl= 6}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{rumdu:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_star"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/rumdu

execute if entity @s[tag=magik,scores={Mlvl= 7}] at @s if block ~ ~-.6 ~ enchanting_table run function first:enmaging/lvlup/lvlup1
