$execute in the_nether positioned $(X) 0 $(Z) run forceload add ~-1 ~-1 ~1 ~1

$execute in the_nether if block $(X) $(Y) $(Z) nether_portal positioned $(X) 0 $(Z) run return run forceload remove ~-1 ~-1 ~1 ~1

$clone ~-2 ~-1 ~-2 ~2 ~3 ~2 to the_nether $(clone_X) $(clone_Y) $(clone_Z) filtered obsidian
$clone ~-2 ~-1 ~-2 ~2 ~3 ~2 to the_nether $(clone_X) $(clone_Y) $(clone_Z) filtered nether_portal

$execute in the_nether positioned $(X) $(Y) $(Z) if block ~ ~ ~-1 nether_portal run function anp:guard_rails/north
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~1 ~ ~ nether_portal run function anp:guard_rails/east
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~ ~ ~1 nether_portal run function anp:guard_rails/south
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~-1 ~ ~ nether_portal run function anp:guard_rails/west

$execute in the_nether positioned $(X) 0 $(Z) run forceload remove ~-1 ~-1 ~1 ~1
