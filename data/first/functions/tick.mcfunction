##########################
#####   HUD&base  ########
##########################
execute as @a at @s run function first hudandbase
execute as @e[type=#first:sword_users] at @s run function first:base/health



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
execute as @a at @s run function first:manacounter

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
execute as @e[scores={SpellCD = 0},tag=wallM] run function first:spellfc/rusmu/rusmu2

#####
execute as @a at @s run function first:spells
#####

execute as @e[scores={SpellCD = 0},tag=wallM] run function first:spellfc/rusmu/rusmu2

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
execute as @a at @s run function first:raceselect

##########################
#####  Enmaging  #########
##########################
execute as @a[tag=magik] at @s run function enmaging
execute as @a[tag=!magik] at @s if predicate first:enmaging run function first:enmaging/enmaging


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
