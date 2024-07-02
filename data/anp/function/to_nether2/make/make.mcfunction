setblock ~ ~-1 ~ obsidian
setblock ~ ~3 ~ obsidian
$execute in overworld positioned $(overworld_X) $(overworld_Y) $(overworld_Z) if block ~1 ~ ~ nether_portal in the_nether positioned $(X) $(Y) $(Z) run function anp:to_nether2/make/east
$execute in overworld positioned $(overworld_X) $(overworld_Y) $(overworld_Z) if block ~ ~ ~1 nether_portal in the_nether positioned $(X) $(Y) $(Z) run function anp:to_nether2/make/south
$execute in overworld positioned $(overworld_X) $(overworld_Y) $(overworld_Z) if block ~-1 ~ ~ nether_portal in the_nether positioned $(X) $(Y) $(Z) run function anp:to_nether2/make/west
$execute in overworld positioned $(overworld_X) $(overworld_Y) $(overworld_Z) if block ~ ~ ~-1 nether_portal in the_nether positioned $(X) $(Y) $(Z) run function anp:to_nether2/make/north
setblock ~ ~ ~ fire