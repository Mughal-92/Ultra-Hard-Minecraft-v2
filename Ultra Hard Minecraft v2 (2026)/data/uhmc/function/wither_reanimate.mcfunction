particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 1 10000
playsound entity.wither.spawn master @a ~ ~ ~
playsound entity.wither.hurt master @a ~ ~ ~

execute store result storage wither_reanimation_rng skeletons int 1 run random value 3..5

execute if data storage minecraft:wither_reanimation_rng {skeletons:3} run summon wither_skeleton
execute if data storage minecraft:wither_reanimation_rng {skeletons:3} run summon wither_skeleton
execute if data storage minecraft:wither_reanimation_rng {skeletons:3} run summon wither_skeleton

execute if data storage minecraft:wither_reanimation_rng {skeletons:4} run summon wither_skeleton
execute if data storage minecraft:wither_reanimation_rng {skeletons:4} run summon wither_skeleton
execute if data storage minecraft:wither_reanimation_rng {skeletons:4} run summon wither_skeleton
execute if data storage minecraft:wither_reanimation_rng {skeletons:4} run summon wither_skeleton

execute if data storage minecraft:wither_reanimation_rng {skeletons:5} run summon wither_skeleton
execute if data storage minecraft:wither_reanimation_rng {skeletons:5} run summon wither_skeleton
execute if data storage minecraft:wither_reanimation_rng {skeletons:5} run summon wither_skeleton
execute if data storage minecraft:wither_reanimation_rng {skeletons:5} run summon wither_skeleton
execute if data storage minecraft:wither_reanimation_rng {skeletons:5} run summon wither_skeleton