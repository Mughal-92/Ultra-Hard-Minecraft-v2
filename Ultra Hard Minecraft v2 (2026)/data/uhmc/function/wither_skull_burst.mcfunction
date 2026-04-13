summon wither_skull ~ ~ ~ {Tags:[wither_skull_burst]}

execute store result storage wither_skull_burst x float 0.01 run random value -90..90
execute store result storage wither_skull_burst y float 0.01 run random value -90..90
execute store result storage wither_skull_burst z float 0.01 run random value -90..90

data modify entity @e[type=wither_skull,limit=1,sort=nearest,tag=wither_skull_burst] Motion[0] set from storage minecraft:wither_skull_burst x
data modify entity @e[type=wither_skull,limit=1,sort=nearest,tag=wither_skull_burst] Motion[1] set from storage minecraft:wither_skull_burst y
data modify entity @e[type=wither_skull,limit=1,sort=nearest,tag=wither_skull_burst] Motion[2] set from storage minecraft:wither_skull_burst z