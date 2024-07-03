setblock ~ ~-1 ~ obsidian
setblock ~ ~3 ~ obsidian
fill ~ ~ ~ ~ ~2 ~ air
$execute in overworld positioned $(overworld_X) $(overworld_Y) $(overworld_Z) if block $(positioning) nether_portal in the_nether positioned $(X) $(Y) $(Z) run function anp:to_nether2/make/$(direction)
setblock ~ ~ ~ fire