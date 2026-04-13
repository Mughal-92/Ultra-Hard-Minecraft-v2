particle minecraft:end_rod ~ ~ ~ 0 0 0 1 1000 force
summon vex
execute as @e[distance=..10] run damage @s 10 magic
playsound entity.evoker.prepare_summon master @a ~ ~ ~