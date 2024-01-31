##########################
#####   HUD&base  ########
##########################
execute as @a[tag=magik] at @s run function first:base/hud
execute as @a[tag=op,tag=!magik] at @s run title @s actionbar [{"text":" \u0020   \u0020   \u0020   \u0020   \u0020   \u0020 \u0020 \u0020 \u0020","color":"#CCCC00"},{"score":{"name":"@s","objective":"mana"},"color":"#CCCC00"},{"text":"/","color":"#CCCC00"},{"score":{"name":"@s","objective":"Maxmana"},"color":"#CCCC00"},{"text":" \u2726","color":"#CCCC00"}]
execute as @a[predicate=first:switches_spell,tag=magik] at @s run scoreboard players add @s counter1 1 
execute as @a at @s run scoreboard players add @s OutOfWater 1
execute as @a[scores={OutOfWater=-1200..},predicate=first:in_water] at @s run scoreboard players remove @s OutOfWater 10
execute as @a at @s if score @s waterD matches 1.. run scoreboard players remove @s OutOfWater 1200
execute as @a at @s if score @s waterD matches 1.. run tellraw @s[tag=qualak] {"text": "You feel refreshed!","color":"#00ccff"}
execute as @a at @s if score @s waterD matches 1.. run scoreboard players remove @s waterD 1
execute as @a[scores={OutOfWater=-1200..}] at @s if predicate first:rain if predicate first:check_sky run scoreboard players remove @s OutOfWater 10
execute as @e[type=#first:sword_users] at @s run function first:base/health
execute as @a[scores={Death=1..}] at @s run function first:base/death



##########################
#####  Player setup  #####
##########################
execute as @a[tag=] at @s run function first:newbier
execute as @a[tag=selectinRace] at @s run effect give @s blindness 5 15 true
execute as @a[tag=selectinRace] in first:limbo run tp @s 0 60 0
execute as @a[tag= selectinRace, scores = {ChooseOp1 = 1..}] run function first:selfc/select1
execute as @a[tag= selectinRace, scores = {ChooseOp2 = 1..}] run function first:selfc/select2
execute as @a[tag= selectinRace, scores = {ChooseOp3 = 1..}] run function first:selfc/select3
execute as @a[tag= selectinRace, scores = {ChooseOp4 = 1..}] run function first:selfc/select4
execute as @a[tag= selectinRace, scores = {ChooseOp5 = 1..}] run function first:selfc/select5

##########################
#####  Mana counter  #####
##########################
execute as @a at @s run scoreboard players add @s manaTimer 1
execute as @a[tag=xuluak] if score @s manaTimer matches 300..600 run scoreboard players add @s manaTimer 1
execute as @a[tag= magik,predicate=first:spring] at @s run scoreboard players add @s manaTimer 1
execute as @a[scores={manaTimer = 1200..}] run scoreboard players add @s mana 1
execute as @a[scores={manaTimer = 1200..}] run scoreboard players set @s manaTimer 0
execute as @a at @s if score @s mana > @s Maxmana run scoreboard players remove @s mana 1

execute as @a[scores={mana = ..-1}] at @s run effect give @s nausea 5 1 true
execute as @a[scores={mana = ..-5}] at @s run effect give @s slowness 1 1 true
execute as @a[scores={mana = ..-7}] at @s run effect give @s poison 3 2 true
execute as @a[scores={mana = ..-10}] at @s run effect give @s blindness 2 1 true
execute as @a[scores={mana = ..-15}] at @s run effect give @s wither 2 1 true
execute as @a[scores={mana = ..-20}] at @s run damage @s 1 bad_respawn_point
execute as @a at @s run function first:mana/mana

execute as @a at @s if score @s mana > @s Maxmana run particle flash ~ ~1 ~ 0 0 0 0 1 normal
execute as @a at @s if score @s mana > @s Maxmana run playsound block.candle.extinguish player @a ~ ~ ~ 0.2 2

#############
### Gems  ###
#############
execute as @a[tag=magik] at @s run function first:gem/echo_shard

##################
##### Scrolls ####
##################
execute as @e[type=snowball,nbt={Item:{tag:{manaBurst:1}}}] at @s run function first:consumables/mburst
execute as @e[type=snowball,nbt={Item:{tag:{rainStone:1}}}] at @s run function first:consumables/rstone
execute as @e[type=snowball,nbt={Item:{tag:{arrowsCall:1}}}] at @s run function first:consumables/errow
execute as @e[type=area_effect_cloud,tag=errow] at @s run function first:consumables/errow2
execute as @e[type=arrow,tag=marrow,nbt={inGround:1b}] at @s run kill @s
execute as @e[type=arrow,tag=marrow] at @s run particle electric_spark ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=snowball,nbt={Item:{tag:{motivationScroll:1}}}] at @s run function first:consumables/motscroll
execute as @e[type=snowball,nbt={Item:{tag:{cleanseScroll:1}}}] at @s run function first:consumables/cleanscroll


##########################
#####  Artifacts  ########
##########################
execute as @e[predicate=first:artifact/dbmsword,scores={HealthPerc = ..25}] at @s run function first:artifact/dbmsword
execute as @e[type=#first:projectiles,tag=bounc] at @s run function first:artifact/bounc
execute as @e[type=#first:projectiles,tag=ironstring] at @s run particle enchanted_hit ~ ~ ~ 0 0 0 0 1 normal @a

execute as @e[type=#first:projectiles,tag=bounc2,nbt={inGround:1b}] at @s run function first:artifact/bounc2
execute as @e[type=#first:projectiles] unless score @s SpellCD matches ..4999 at @s run function first:artifact/ricochetbow
execute as @e[type=#first:projectiles] unless score @s SpellCD matches ..4999 at @s run function first:artifact/nograv

##########################
#####  Spells ############
##########################
execute as @e[scores={SpellCD = 1..}] at @s run scoreboard players remove @s SpellCD 1
execute as @e[scores = {SpellCD = ..-1}] at @s run scoreboard players add @s SpellCD 1

execute as @e[type=area_effect_cloud,tag=ect] at @s run function first:spellfc/ect/tick

execute as @a[scores={SpellCD = 1..}] run function first:spellfc/magiccd
execute as @a[scores={SpellCD = 0}] run function first:spellfc/magicenab
execute as @e[scores={SpellCD = 0},tag=wallM] run function first:spellfc/rusmu/rusmu2

execute as @a[tag=magik,predicate=first:has_wand,scores={WUse=1..}] at @s run function first:spellfc/cast
execute as @a[predicate=first:switches_spell,predicate=first:has_wand_r,tag=magik] at @s if score @s counter1 matches 5 run function first:spellfc/sppick
execute as @a[predicate=first:switches_spell,predicate=first:has_wand_l,tag=magik] at @s if score @s counter1 matches 5 run function first:spellfc/sppick_kontra

execute as @a[tag=magik] at @s if score @s Mlvl < @s SPick run scoreboard players set @s SPick 1
execute as @a[tag=magik] at @s if score @s SPick matches ..0 run execute as @s at @s store result score @s SPick run scoreboard players get @s Mlvl
execute as @a[tag=magik,predicate=first:has_wand_r] at @s if score @s SPick matches 2 run scoreboard players set @s SPick 3
execute as @a[tag=magik,predicate=first:has_wand_l] at @s if score @s SPick matches 2 run scoreboard players set @s SPick 1

execute as @a[tag=magik,scores = {ect = 1..,SpellCD = 0}] at @s run function first:spellfc/ect/ect
execute as @a[tag=chorusian,scores = {liosa_end = 1..,SpellCD = 0}] at @s run function first:spellfc/liosa/liosa_end
execute as @a[tag=chorusian,scores = {liosa_world = 1..,SpellCD = 0}] at @s run function first:spellfc/liosa/liosa_world
execute as @a[tag=chorusian,scores = {liosa_nether = 1..,SpellCD = 0}] at @s run function first:spellfc/liosa/liosa_nether
execute as @a[tag=magik,scores = {nasa = 1..,SpellCD = 0}] at @s run function first:spellfc/nasa/nasa
execute as @a[tag=magik,scores = {rusmu = 1..,SpellCD = 0}] at @s run function first:spellfc/rusmu/rusmu
execute as @a[tag=magik,scores = {tesden = 1..,SpellCD = 0}] at @s run function first:spellfc/tesden/tesden
execute as @a[tag=magik,scores = {geresu = 1..,SpellCD = 0}] at @s run function first:spellfc/geresu/geresu
execute as @a[tag=magik,scores = {ptoca = 1..,SpellCD = 0}] at @s run function first:spellfc/ptoca/ptoca
execute as @a[tag=magik,scores = {rumdu = 1..,SpellCD = 0}] at @s run function first:spellfc/rumdu/rumdu

execute as @a[tag=magik,scores = {eraspha = 1..,SpellCD = 0}] at @s run function first:spellfc/mlvl8/eraspha
execute as @a[tag=magik,scores = {telatu = 1..,SpellCD = 0}] at @s run function first:spellfc/mlvl9/telatu
execute as @a[tag=magik,scores = {truodes = 1..,SpellCD = 0}] at @s run function first:spellfc/mlvl10/truodes

execute as @e[type=area_effect_cloud,tag=AirTelatu] at @s run function first:spellfc/mlvl9/airaec
execute as @e[type=area_effect_cloud,tag=EarthTelatu] at @s run function first:spellfc/mlvl9/earthaec
execute as @e[type=area_effect_cloud,tag=EndTelatu] at @s run function first:spellfc/mlvl9/endaec
execute as @e[type=area_effect_cloud,tag=FireTelatu] at @s run function first:spellfc/mlvl9/fireaec
execute as @e[type=area_effect_cloud,tag=IceTelatu] at @s run function first:spellfc/mlvl9/iceaec
execute as @e[type=area_effect_cloud,tag=SkulkTelatu] at @s run function first:spellfc/mlvl9/skulkaec
execute as @e[type=area_effect_cloud,tag=UstraTelatu] at @s run function first:spellfc/mlvl9/ustraaec
execute as @e[type=area_effect_cloud,tag=WaterTelatu] at @s run function first:spellfc/mlvl9/wateraec
execute as @e[type=wolf,tag=SoulDog] at @s run function first:spellfc/mlvl9/witheraec

execute as @e[type=area_effect_cloud,tag=tornado] at @s run function first:spellfc/mlvl10/airaec
execute as @e[type=area_effect_cloud,tag=quake] at @s run function first:spellfc/mlvl10/earthaec
execute as @e[type=area_effect_cloud,tag=truodesEndSpread] at @s run function first:spellfc/mlvl10/endaec
execute as @e[type=area_effect_cloud,tag=fireTruodes] at @s run function first:spellfc/mlvl10/fireaec
execute as @e[type=area_effect_cloud,tag=iceTruodes] at @s run function first:spellfc/mlvl10/iceaec
execute as @e[type=area_effect_cloud,tag=sonicCharge] at @s run function first:spellfc/mlvl10/skulkaec
execute as @e[type=area_effect_cloud,tag=lightningBall] at @s run function first:spellfc/mlvl10/ustraaec
execute as @e[type=area_effect_cloud,tag=geysir] at @s run function first:spellfc/mlvl10/wateraec
execute as @e[type=area_effect_cloud,tag=truodesWither] at @s run function first:spellfc/mlvl10/witheraec


execute as @e[tag=rusmu] at @s run function first:spellfc/rusmu/rusmu3

execute as @e[type=area_effect_cloud,tag=AirErasphaCosmetic] at @s run function first:spellfc/mlvl8/aircosm
execute as @e[type=area_effect_cloud,tag=fireeraspha] at @s run function first:spellfc/mlvl8/firecosm
execute as @e[type=area_effect_cloud,tag=iceeraspha] at @s run function first:spellfc/mlvl8/icecosm



execute as @a[tag=magik] at @s if entity @e[tag=MP,type=area_effect_cloud] run scoreboard players add @s CastN 1
execute as @e[tag=MP] at @s if entity @e[tag=MP,type=area_effect_cloud] run scoreboard players add @s CastN 1
execute as @e[scores={CastN=1000000000..}] run scoreboard players set @s CastN -1000000000
execute as @e[tag=MP,type=area_effect_cloud] at @s unless block ~ ~ ~ #first:liquids run function first:spellfc/ect/ectblock
execute as @e[tag=MP,type=area_effect_cloud] at @s if entity @e[distance=..1.5] run function first:spellfc/magicdmg


##########################
#####  Race modifs  ######
##########################
execute as @a[tag=human] at @s run function first:racefc/humantick
execute as @a[tag=lutuk] at @s run function first:racefc/lutuktick
execute as @a[tag=xuluak] at @s run function first:racefc/xuluaktick
execute as @a[tag=renwik] at @s run function first:racefc/renwiktick
execute as @a[tag=skulkin] at @s run function first:racefc/skulkintick
execute as @a[tag=chorusian] at @s run function first:racefc/chorusiantick
execute as @a[tag=therwin] at @s run function first:racefc/therwintick
execute as @a[tag=qualak] at @s run function first:racefc/qualaktick
execute as @a[tag=cerglan] at @s run function first:racefc/cerglantick


##########################
#####  Enmaging  #########
##########################
execute as @a[tag=!magik] at @s if predicate first:enmaging run function first:enmaging/enmaging
execute as @a[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",tag:{MagicGem:5}}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/wandcreme
execute as @a[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lapis_lazuli",tag:{MagicGem:5}}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/wandcrlap
execute as @a[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:quartz",tag:{MagicGem:5}}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/wandcrqua

execute as @a[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:paper"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glow_ink_sac"}}] if block ~ ~-1 ~ lectern run function first:enmaging/scrolls/energy
execute as @a[tag=magik] at @s as @e[type=item,nbt={Item:{id:"minecraft:paper"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:golden_apple"}}] if block ~ ~-1 ~ lectern run function first:enmaging/scrolls/hype

execute as @a[tag=magik,scores={Mlvl= 1}] at @s as @e[type=item,nbt={Item:{id:"minecraft:milk_bucket"}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glistering_melon_slice"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/nasa
execute as @a[tag=magik,scores={Mlvl= 2}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{rusmu:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:shield"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/rusmu
execute as @a[tag=magik,scores={Mlvl= 3}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{tesden:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:totem_of_undying"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/tesden
execute as @a[tag=magik,scores={Mlvl= 4}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{geresu:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/geresu
execute as @a[tag=magik,scores={Mlvl= 5}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{ptoca:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:end_crystal"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/ptoca
execute as @a[tag=magik,scores={Mlvl= 6}] at @s as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{rumdu:1}}},distance=..5] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_star"}}] if block ~ ~-1 ~ enchanting_table run function first:enmaging/base/rumdu

execute as @a[tag=magik,scores={Mlvl= 7}] at @s if block ~ ~-.6 ~ enchanting_table run function first:enmaging/lvlup/lvlup1


##########################
#####  Corruption  #######
##########################
execute as @a[tag=lutuk,scores={Health = ..10}] at @s if block ~ ~-1 ~ sculk_catalyst if biome ~ ~ ~ deep_dark run function first:corrupt/lutskulk
execute as @a[tag=xuluak,scores={Health = ..10}] at @s if block ~ ~-1 ~ purpur_block if dimension the_end run function first:corrupt/xulcho
execute as @a[tag=renwik,scores={Health = ..10}] at @s if block ~ ~-1 ~ soul_sand if biome ~ ~ ~ soul_sand_valley run function first:corrupt/renther
execute as @a[tag=qualak,scores={Health = ..10}] at @s if block ~ ~-1 ~ blue_ice if biome ~ ~ ~ ice_spikes run function first:corrupt/quacerg

#########################
#####  Structures  ######
#########################
execute as @e[type=armor_stand,tag=dead_shrine_marker] at @s if block ~ ~ ~ soul_fire run function first:boss/dbm/dbmsummon
execute as @e[type=armor_stand,tag= forgeCenter,scores={SpellCD=..200}] at @s if entity @p[tag=magik,scores={Mlvl = 7},distance=..5] run function first:structures/the_forge/active
execute as @e[type=armor_stand,tag= forgeCenter] at @s if entity @p[tag=magik,scores={Mlvl = 7,Ghorn=1..},distance=..5] unless entity @e[type=giant,tag=forger] run function first:boss/forger/awake
execute as @a[tag=magik,scores={Ghorn=1..}] unless entity @e[type=armor_stand,tag=forgeCenter,distance=..5,limit=1] run scoreboard players set @s Ghorn 0

execute as @e[type=armor_stand,tag=enmagerUG] at @s unless score @s SpellCD matches 1.. if entity @p[distance=..10,tag=magik] run function first:structures/enmaging_shrine/tick
execute as @e[type=area_effect_cloud,tag=lvl9] at @s run function first:enmaging/lvl9/aeclvl9
execute as @e[type=area_effect_cloud,tag=lvl10] at @s run function first:enmaging/lvl10/aeclvl10

execute as @e[type=interaction,tag=ttridfound] at @s if data entity @s interaction run function first:structures/trident/trident1
execute as @e[type=trident,nbt={item:{id:"minecraft:trident",Count:1b,tag:{maelstrom:1}},inGround:0b,LeftOwner:1b}] at @s run function first:artifact/maelstrom/tick
execute as @e[type=trident,nbt={item:{id:"minecraft:trident",Count:1b,tag:{maelstrom:1}},inGround:1b,DealtDamage:0b}] at @s run function first:artifact/maelstrom/tickig
execute as @e[type=area_effect_cloud,tag=maelstrom] at @s run function first:artifact/maelstrom/tickaec

#########################
#####  Boss fights  #####
#########################
execute as @e[type=wither_skeleton,tag=DBMan,tag=boss] at @s run function first:boss/dbm/dbmtick
execute as @e[type=wither_skeleton,tag=DBMan] at @s run bossbar set dbm players @a[distance=..40]
execute if entity @e[type=wither_skeleton,tag=DBMan] run bossbar set dbm visible true
execute unless entity @e[type=wither_skeleton,tag=DBMan] run bossbar set dbm visible false
execute as @e[type=wither_skeleton,tag=DBMan] at @s store result bossbar dbm value run data get entity @s Health
execute at @e[type=falling_block,tag=SFP] run particle soul_fire_flame ~ ~ ~ .1 .1 .1 .01 10 normal @a
execute at @e[type=falling_block,tag=FP] run particle flame ~ ~ ~ .1 .1 .1 .01 10 normal @a
execute at @e[type=falling_block,tag=WP] run particle splash ~ ~ ~ .1 .1 .1 .01 10 normal @a

execute as @e[type=skeleton,tag=deadninja] at @s run function first:boss/deadninja/tick

execute as @e[type=skeleton,tag=deadninja] at @s run bossbar set dnj players @a[distance=..40]
execute if entity @e[type=skeleton,tag=deadninja] run bossbar set dnj visible true
execute unless entity @e[type=skeleton,tag=deadninja] run bossbar set dnj visible false
execute as @e[type=skeleton,tag=deadninja] at @s store result bossbar dnj value run data get entity @s Health

execute as @e[type=giant,tag=forger] at @s run function first:boss/forger/tick
execute as @e[type=zombie,tag=ForgerBrain] at @s unless entity @e[type=giant,tag=forger] run kill @s
execute as @e[type=creeper,tag=forgewisp] at @s run particle lava ~ ~ ~ 0 0 0 0 1 normal @a
kill @e[type=area_effect_cloud,nbt={effects:[{duration:-1}]}]

execute as @e[type=giant,tag=forger] at @s run bossbar set frg players @a[distance=..40]
execute if entity @e[type=giant,tag=forger] run bossbar set frg visible true
execute unless entity @e[type=giant,tag=forger] run bossbar set frg visible false
execute as @e[type=giant,tag=forger] at @s store result bossbar frg value run data get entity @s Health

execute as @e[type=drowned,tag=drowner] at @s run function first:boss/drowner/tick


execute as @e[type=drowned,tag=drowner] at @s run bossbar set drw players @a[distance=..40]
execute if entity @e[type=drowned,tag=drowner] run bossbar set drw visible true
execute unless entity @e[type=drowned,tag=drowner] run bossbar set drw visible false
execute as @e[type=drowned,tag=drowner] at @s store result bossbar drw value run data get entity @s Health