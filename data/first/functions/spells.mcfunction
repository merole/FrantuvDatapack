execute if entity @s[scores={SpellCD = 0}] run function first:spellfc/magicenab

execute if entity @s[scores={SpellCD = 1..}] run function first:spellfc/magiccd
execute if entity @s[scores={SpellCD = 0}] run function first:spellfc/magicenab

execute if entity @s[tag=magik,predicate=first:has_wand,scores={WUse=1..}] at @s run function first:spellfc/cast
execute if entity @s[predicate=first:switches_spell,predicate=first:has_wand_r,tag=magik] at @s if score @s counter1 matches 5 run function first:spellfc/sppick
execute if entity @s[predicate=first:switches_spell,predicate=first:has_wand_l,tag=magik] at @s if score @s counter1 matches 5 run function first:spellfc/sppick_kontra

execute if entity @s[tag=magik] at @s if score @s Mlvl < @s SPick run scoreboard players set @s SPick 1
execute if entity @s[tag=magik] at @s if score @s SPick matches ..0 run execute as @s at @s store result score @s SPick run scoreboard players get @s Mlvl
execute if entity @s[tag=magik,predicate=first:has_wand_r] at @s if score @s SPick matches 2 run scoreboard players set @s SPick 3
execute if entity @s[tag=magik,predicate=first:has_wand_l] at @s if score @s SPick matches 2 run scoreboard players set @s SPick 1

execute if entity @s[tag=magik,scores = {ect = 1..,SpellCD = 0}] at @s run function first:spellfc/ect/ect
execute if entity @s[tag=chorusian,scores = {liosa_end = 1..,SpellCD = 0}] at @s run function first:spellfc/liosa/liosa_end
execute if entity @s[tag=chorusian,scores = {liosa_world = 1..,SpellCD = 0}] at @s run function first:spellfc/liosa/liosa_world
execute if entity @s[tag=chorusian,scores = {liosa_nether = 1..,SpellCD = 0}] at @s run function first:spellfc/liosa/liosa_nether
execute if entity @s[tag=magik,scores = {nasa = 1..,SpellCD = 0}] at @s run function first:spellfc/nasa/nasa
execute if entity @s[tag=magik,scores = {rusmu = 1..,SpellCD = 0}] at @s run function first:spellfc/rusmu/rusmu
execute if entity @s[tag=magik,scores = {tesden = 1..,SpellCD = 0}] at @s run function first:spellfc/tesden/tesden
execute if entity @s[tag=magik,scores = {geresu = 1..,SpellCD = 0}] at @s run function first:spellfc/geresu/geresu
execute if entity @s[tag=magik,scores = {ptoca = 1..,SpellCD = 0}] at @s run function first:spellfc/ptoca/ptoca
execute if entity @s[tag=magik,scores = {rumdu = 1..,SpellCD = 0}] at @s run function first:spellfc/rumdu/rumdu

execute if entity @s[tag=magik,scores = {eraspha = 1..,SpellCD = 0}] at @s run function first:spellfc/mlvl8/eraspha
execute if entity @s[tag=magik,scores = {telatu = 1..,SpellCD = 0}] at @s run function first:spellfc/mlvl9/telatu
execute if entity @s[tag=magik,scores = {truodes = 1..,SpellCD = 0}] at @s run function first:spellfc/mlvl10/truodes
