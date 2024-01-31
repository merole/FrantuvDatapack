###### as NOTAG player, runs once
execute as @s at @s run tag @s add selectinRace
give @p written_book{pages:['["",{"text":"Welcome "},{"selector":"@s"},{"text":"\\nto the world of Silta\\n--------------------\\nYou are about to be born, so please choose one race.\\n\\n(Yes, u can choose...)"}]','["",{"text":"Humans\\n------------------\\nThey are the basic player in minecraft.\\nNo buffs, no debuffs.\\n\\n\\"Ur so basic brooo\\"\\n \\u0020 \\u0020 \\u0020 \\u0020 \\u0020-Sun Tzu\\n\\n"},{"text":"[Choose me!]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger ChooseOp1"}},{"text":"\\n ","color":"reset"}]','["",{"text":"Lutuks\\n--------------------\\nUnderground race.\\nThey LOVE the rocks and caves, and have very sensitive eyes.\\n\\n\\"Caves and Cliffs pt. IV \\u0020boiiiis\\" \\u0020-J. Biden\\n\\n"},{"text":"[Choose me!]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger ChooseOp2"}}]','["",{"text":"Xuluaks\\n-------------------\\nEnchanted species that are interested in magic.\\nBut nether sickens them!\\n\\n\\"Enchanting or Enchantment table???\\"\\n \\u0020 \\u0020 \\u0020 \\u0020 -PeenixSC\\n\\n"},{"text":"[Choose me!]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger ChooseOp3"}},{"text":"\\n ","color":"reset"}]','["",{"text":"Renwiks\\n---------------------\\nSpawn in the nether and love gold. Cold-sensitive.\\n\\n\\"HE- HE- HEP*gunshot sound* \\u0161ík\\" \\u0020 -Dads\\n\\n"},{"text":"[Choose me!]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger ChooseOp4"}}]','["",{"text":"Qualaks\\n---------------------\\nWatery bois,they dont like hot destinations\\n"},{"text":"[Choose me]","color":"green","clickEvent":{"action":"run_command","value":"/trigger ChooseOp5"}},{"text":"\\n ","color":"reset"}]'],title:"Open me",author:FrantisekV8,generation:3}
execute as @s at @s run scoreboard players enable @s ChooseOp1
execute as @s at @s run scoreboard players enable @s ChooseOp2
execute as @s at @s run scoreboard players enable @s ChooseOp3
execute as @s at @s run scoreboard players enable @s ChooseOp4
execute as @s at @s run scoreboard players enable @s ChooseOp5
execute as @s at @s run scoreboard players set @s ChooseOp1 0
execute as @s at @s run scoreboard players set @s ChooseOp2 0
execute as @s at @s run scoreboard players set @s ChooseOp3 0
execute as @s at @s run scoreboard players set @s ChooseOp4 0
execute as @s at @s run scoreboard players set @s ChooseOp5 0
execute in overworld run spawnpoint @s 0 -60 0
effect clear @s