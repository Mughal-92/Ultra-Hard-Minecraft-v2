execute as @e[type=ghast,tag=!hpset] run attribute @s max_health base set 40
execute as @e[type=ghast,tag=!hpset] run data modify entity @s Health set value 40
execute as @e[type=ghast,tag=!hpset] run tag @s add hpset
execute as @e[type=ghast] run attribute @s movement_speed base set 2


execute at @e[type=ghast] run execute as @e[type=fireball,distance=..10] run tag @s add ghast_fireball
execute as @e[tag=ghast_fireball] run data merge entity @s {ExplosionPower:3}
execute at @e[tag=ghast_fireball] run particle flame ~ ~ ~ 3 3 3 0.1 200


execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:netherrack
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:crimson_nylium
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:warped_nylium
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:calcite
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:packed_mud

execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:clay
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:coarse_dirt
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:dirt
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:dirt_path
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:farmland
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:grass_block
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:gravel
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:mud
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:mycelium
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:podzol
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:red_sand
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:rooted_dirt
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:sand
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:soul_sand
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:soul_soil
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:muddy_mangrove_roots

execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:snow
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:snow_block
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:moss_block
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:moss_carpet
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:pale_moss_block
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:pale_moss_carpet

execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:nether_wart_block
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:warped_wart_block
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:shroomlight
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:sponge
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:wet_sponge
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:hay_block
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:target
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:dried_kelp_block

execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #minecraft:leaves
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:sculk
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:sculk_vein
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:big_dripleaf
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:glow_lichen
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:vine

execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:bamboo
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:bamboo_sapling
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:chorus_plant
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:chorus_flower
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:cocoa
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:daylight_detector
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:melon
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:pumpkin
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:carved_pumpkin
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:jack_o_lantern
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:bee_nest
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:beehive
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:composter
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:note_block
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace minecraft:ladder

execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #minecraft:logs
execute at @e[tag=ghast_fireball] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #minecraft:planks