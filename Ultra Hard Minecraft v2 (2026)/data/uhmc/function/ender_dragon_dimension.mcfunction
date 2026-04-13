# Defining tower radius

execute as @e[type=end_crystal,tag=!floating_crystal] at @s if block ~ ~-1 ~ bedrock run execute if block ~2 ~-2 ~ obsidian run tag @s add end_crystal_smalltower

execute as @e[type=end_crystal,tag=!floating_crystal] at @s if block ~ ~-1 ~ bedrock run execute if block ~3 ~-2 ~ obsidian run tag @s remove end_crystal_smalltower
execute as @e[type=end_crystal,tag=!floating_crystal] at @s if block ~ ~-1 ~ bedrock run execute if block ~3 ~-2 ~ obsidian run tag @s add end_crystal_mediumtower

execute as @e[type=end_crystal,tag=!floating_crystal] at @s if block ~ ~-1 ~ bedrock run execute if block ~4 ~-2 ~ obsidian run tag @s remove end_crystal_mediumtower
execute as @e[type=end_crystal,tag=!floating_crystal] at @s if block ~ ~-1 ~ bedrock run execute if block ~4 ~-2 ~ obsidian run tag @s add end_crystal_talltower

execute as @e[type=end_crystal,tag=!floating_crystal] at @s if block ~ ~-1 ~ bedrock run execute if block ~5 ~-2 ~ obsidian run tag @s remove end_crystal_talltower
execute as @e[type=end_crystal,tag=!floating_crystal] at @s if block ~ ~-1 ~ bedrock run execute if block ~5 ~-2 ~ obsidian run tag @s add end_crystal_tallest_tower


## Small Tower Crystal Encasing-------------------------------------------------------------------------------------------------



# Empty (For Debug)
execute as @e[type=end_crystal,tag=end_crystal_smalltower] at @s run fill ~3 ~-1 ~3 ~-3 ~3 ~-3 air

# Clearing bars
execute as @e[type=end_crystal,tag=end_crystal_smalltower] at @s run fill ~2 ~-1 ~2 ~-2 ~2 ~-2 air

# X-Axis walls
execute as @e[type=end_crystal,tag=end_crystal_smalltower] at @s run fill ~2 ~-2 ~-1 ~2 ~2 ~1 obsidian
execute as @e[type=end_crystal,tag=end_crystal_smalltower] at @s run fill ~-2 ~-2 ~-1 ~-2 ~2 ~1 obsidian

# Z-Axis walls
execute as @e[type=end_crystal,tag=end_crystal_smalltower] at @s run fill ~1 ~-2 ~2 ~-1 ~2 ~2 obsidian
execute as @e[type=end_crystal,tag=end_crystal_smalltower] at @s run fill ~1 ~-2 ~-2 ~-1 ~2 ~-2 obsidian

# Roof
execute as @e[type=end_crystal,tag=end_crystal_smalltower] at @s run fill ~2 ~2 ~1 ~-2 ~2 ~-1 obsidian

# Replace bedrock
execute as @e[type=end_crystal,tag=end_crystal_smalltower] at @s run setblock ~ ~-1 ~ bedrock



## Medium Tower Crystal Encasing------------------------------------------------------------------------------------------------



# Empty (For Debug)
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~3 ~-1 ~3 ~-3 ~3 ~-3 air

# Diagonal Walls
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~2 ~-1 ~2 ~2 ~3 ~2 obsidian
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~-2 ~-1 ~2 ~-2 ~3 ~2 obsidian
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~2 ~-1 ~-2 ~2 ~3 ~-2 obsidian
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~-2 ~-1 ~-2 ~-2 ~3 ~-2 obsidian

# X-Axis Walls
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~3 ~-1 ~1 ~3 ~3 ~-1 obsidian
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~-3 ~-1 ~1 ~-3 ~3 ~-1 obsidian

# Z-Axis Walls
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~1 ~-1 ~3 ~-1 ~3 ~3 obsidian
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~1 ~-1 ~-3 ~-1 ~3 ~-3 obsidian

# Roof
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run fill ~2 ~3 ~2 ~-2 ~3 ~-2 obsidian

# Replace Bedrock
execute as @e[type=end_crystal,tag=end_crystal_mediumtower] at @s run setblock ~ ~-1 ~ bedrock



## Tall Tower Crystal Encasing--------------------------------------------------------------------------------------------------



# Empty (For Debug)
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~5 ~-1 ~5 ~-5 ~5 ~-5 air

# X-Bound Diagonal Walls
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~3 ~-1 ~2 ~3 ~4 ~2 obsidian
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~3 ~-1 ~-2 ~3 ~4 ~-2 obsidian

execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~-3 ~-1 ~2 ~-3 ~4 ~2 obsidian
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~-3 ~-1 ~-2 ~-3 ~4 ~-2 obsidian

# Z-Bound Diagonal Walls
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~2 ~-1 ~3 ~2 ~4 ~3 obsidian
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~2 ~-1 ~-3 ~2 ~4 ~-3 obsidian

execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~-2 ~-1 ~3 ~-2 ~4 ~3 obsidian
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~-2 ~-1 ~-3 ~-2 ~4 ~-3 obsidian

# X-Axis Walls
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~4 ~-1 ~1 ~4 ~4 ~-1 obsidian
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~-4 ~-1 ~-1 ~-4 ~4 ~1 obsidian

# Z-Axis Walls
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~1 ~-1 ~4 ~-1 ~4 ~4 obsidian
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~1 ~-1 ~-4 ~-1 ~4 ~-4 obsidian

# Roof
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~2 ~4 ~2 ~-2 ~4 ~-2 obsidian
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~4 ~4 ~1 ~-4 ~4 ~-1 obsidian
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run fill ~1 ~4 ~4 ~-1 ~4 ~-4 obsidian

# Replace Bedrock
execute as @e[type=end_crystal,tag=end_crystal_talltower] at @s run setblock ~ ~-1 ~ bedrock



## Tallest Tower Crystal Encasing-----------------------------------------------------------------------------------------------



# Empty (For Debug)
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~5 ~-1 ~5 ~-5 ~5 ~-5 air

# X-Axis Walls
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~5 ~-1 ~1 ~5 ~5 ~-1 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~4 ~-1 ~2 ~4 ~5 ~3 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~4 ~-1 ~-2 ~4 ~5 ~-3 obsidian

execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~-5 ~-1 ~-1 ~-5 ~5 ~1 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~-4 ~-1 ~2 ~-4 ~5 ~3 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~-4 ~-1 ~-2 ~-4 ~5 ~-3 obsidian

# Z-Axis Walls
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~1 ~-1 ~5 ~-1 ~5 ~5 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~2 ~-1 ~4 ~3 ~5 ~4 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~-2 ~-1 ~4 ~-3 ~5 ~4 obsidian

execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~1 ~-1 ~-5 ~-1 ~5 ~-5 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~2 ~-1 ~-4 ~3 ~5 ~-4 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~-2 ~-1 ~-4 ~-3 ~5 ~-4 obsidian

# Roof
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~3 ~5 ~3 ~-3 ~5 ~-3 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~5 ~5 ~1 ~-5 ~5 ~-1 obsidian
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~1 ~5 ~5 ~-1 ~5 ~-5 obsidian

# Replace Bedrock
execute as @e[type=end_crystal,tag=end_crystal_tallest_tower] at @s run fill ~3 ~5 ~3 ~-3 ~5 ~-3 obsidian



## Addition Floating Crystals---------------------------------------------------------------------------------------------------

kill @e[tag=floating_crystal]

summon end_crystal 0 120 21 {Tags:["floating_crystal"]}
summon end_crystal 21 120 0 {Tags:["floating_crystal"]}
summon end_crystal -21 120 0 {Tags:["floating_crystal"]}
summon end_crystal 0 120 -21 {Tags:["floating_crystal"]}



execute at @e[tag=floating_crystal] run fill ~3 ~10 ~3 ~-3 ~-10 ~-3 air
execute at @e[tag=floating_crystal] run setblock ~ ~-1 ~ bedrock

execute at @e[tag=floating_crystal] run fill ~0 ~-6 ~0 ~0 ~-5 ~0 crying_obsidian

execute at @e[tag=floating_crystal] run fill ~01 ~-4 ~00 ~01 ~-3 ~00 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~-4 ~01 ~00 ~-3 ~01 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-1 ~-4 ~00 ~-1 ~-3 ~00 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~-4 ~-1 ~00 ~-3 ~-1 crying_obsidian

execute at @e[tag=floating_crystal] run fill ~02 ~-2 ~00 ~02 ~-1 ~0 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~01 ~-2 ~01 ~01 ~-1 ~1 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~-2 ~02 ~00 ~-1 ~2 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-1 ~-2 ~01 ~-1 ~-1 ~1 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-2 ~-2 ~00 ~-2 ~-1 ~0 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-1 ~-2 ~-1 ~-1 ~-1 ~-1 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~-2 ~-2 ~00 ~-1 ~-2 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~01 ~-2 ~-1 ~01 ~-1 ~-1 crying_obsidian

execute at @e[tag=floating_crystal] run fill ~03 ~00 ~00 ~03 ~1 ~00 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~02 ~00 ~01 ~02 ~1 ~01 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~01 ~00 ~02 ~01 ~1 ~02 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~00 ~03 ~00 ~1 ~03 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-1 ~00 ~02 ~-1 ~1 ~02 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-2 ~00 ~01 ~-2 ~1 ~01 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-3 ~00 ~00 ~-3 ~1 ~00 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-2 ~00 ~-1 ~-2 ~1 ~-1 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-1 ~00 ~-2 ~-1 ~1 ~-2 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~00 ~-3 ~00 ~1 ~-3 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~01 ~00 ~-2 ~01 ~1 ~-2 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~02 ~00 ~-1 ~02 ~1 ~-1 crying_obsidian

execute at @e[tag=floating_crystal] run fill ~02 ~02 ~00 ~02 ~3 ~00 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~01 ~02 ~01 ~01 ~3 ~01 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~02 ~02 ~00 ~3 ~02 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-1 ~02 ~01 ~-1 ~3 ~01 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-2 ~02 ~00 ~-2 ~3 ~00 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-1 ~02 ~-1 ~-1 ~3 ~-1 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~02 ~-2 ~00 ~3 ~-2 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~01 ~02 ~-1 ~01 ~3 ~-1 crying_obsidian

execute at @e[tag=floating_crystal] run fill ~01 ~4 ~00 ~01 ~5 ~00 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~4 ~01 ~00 ~5 ~01 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~-1 ~4 ~00 ~-1 ~5 ~00 crying_obsidian
execute at @e[tag=floating_crystal] run fill ~00 ~4 ~-1 ~00 ~5 ~-1 crying_obsidian

execute at @e[tag=floating_crystal] run fill ~0 ~6 ~0 ~0 ~7 ~0 crying_obsidian

## Could potentially make the floating crystals 50% obsidian and 50% crying obsidian.