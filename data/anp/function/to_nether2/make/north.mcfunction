setblock ~ ~-1 ~-1 obsidian
fill ~ ~-1 ~-2 ~ ~3 ~-2 obsidian
fill ~ ~-1 ~1 ~ ~3 ~1 obsidian
setblock ~ ~3 ~-1 obsidian

# delete southern portal if it exists
fill ~ ~ ~-1 ~ ~2 ~-1 air replace obsidian
fill ~ ~-1 ~-3 ~ ~3 ~-3 air replace obsidian
execute if block ~1 ~ ~-2 obsidian run setblock ~1 ~ ~-2 air
execute if block ~-1 ~ ~-2 obsidian run setblock ~-1 ~ ~-2 air
