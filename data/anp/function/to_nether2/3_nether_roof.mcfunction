execute if block ~ ~ ~ nether_portal run return run function anp:to_nether2/clean
execute if predicate anp:nether_check at @s run return run function anp:to_nether2/4 with storage anp:nether_portal_pos
execute positioned ~ ~-1 ~ run function anp:to_nether2/3_nether_roof

# what if the portal is on a mod 8 border?
# - it either sees the other half of the np
# - or 2 portals collide and fail
# implemented solution:
# - the 2nd portal is correcter
# - if it sees an np in a collumb around it,
# - break the 1st portal in north and west
