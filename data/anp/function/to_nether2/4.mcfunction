$execute in the_nether positioned $(X) 0 $(Z) run forceload add ~-1 ~-1 ~1 ~1

$execute in the_nether if block $(X) $(Y) $(Z) nether_portal run return run forceload remove ~-1 ~-1 ~1 ~1

# make a way back through for players stuck in a bad spawn
function anp:safe with entity @s

# make portal
$execute in the_nether positioned $(X) $(Y) $(Z) run function anp:to_nether2/make/make with storage anp:nether_portal_pos

# guard rails
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~ ~ ~-1 nether_portal unless block ~1 ~-1 ~ #nether_carver_replaceables run function anp:guard_rails/north
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~1 ~ ~ nether_portal unless block ~ ~-1 ~1 #nether_carver_replaceables run function anp:guard_rails/east
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~ ~ ~1 nether_portal unless block ~-1 ~-1 ~ #nether_carver_replaceables run function anp:guard_rails/south
$execute in the_nether positioned $(X) $(Y) $(Z) if block ~-1 ~ ~ nether_portal unless block ~ ~-1 ~-1 #nether_carver_replaceables run function anp:guard_rails/west

$execute in the_nether positioned $(X) 0 $(Z) run forceload remove ~-1 ~-1 ~1 ~1
