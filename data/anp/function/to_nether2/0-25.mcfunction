# determine which direction to build the portal to (to north or west, consistant with the code)
## north
execute if block ~ ~ ~-1 nether_portal run data merge storage anp:nether_portal_pos {positioning:"~ ~ ~-1",direction:"north"}
## west
execute if block ~-1 ~ ~ nether_portal run data merge storage anp:nether_portal_pos {positioning:"~-1 ~ ~",direction:"west"}
## south
execute unless block ~ ~ ~-1 nether_portal if block ~ ~ ~1 nether_portal run data merge storage anp:nether_portal_pos {positioning:"~ ~ ~1",direction:"south"}
## east
execute unless block ~-1 ~ ~ nether_portal if block ~1 ~ ~ nether_portal run data merge storage anp:nether_portal_pos {positioning:"~1 ~ ~",direction:"east"}

function anp:to_nether2/0-75
