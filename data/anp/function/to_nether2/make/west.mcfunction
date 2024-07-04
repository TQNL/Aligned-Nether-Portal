setblock ~-1 ~-1 ~ obsidian
fill ~-1 ~ ~ ~-1 ~2 ~ air
fill ~-2 ~-1 ~ ~-2 ~3 ~ obsidian
fill ~1 ~-1 ~ ~1 ~3 ~ obsidian
setblock ~-1 ~3 ~ obsidian

# delete eastern portal if it exists
fill ~-1 ~ ~ ~-1 ~2 ~ air replace obsidian
fill ~-3 ~-1 ~ ~-3 ~3 ~ air replace obsidian
execute if block ~-2 ~ ~1 obsidian run setblock ~-2 ~ ~1 air
execute if block ~-2 ~ ~-1 obsidian run setblock ~-2 ~ ~-1 air
